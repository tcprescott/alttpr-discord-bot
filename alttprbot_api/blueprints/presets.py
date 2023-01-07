import re
from io import BytesIO

from quart import Blueprint, redirect, render_template, request, send_file
from quart_discord import Unauthorized, requires_authorization

from alttprbot import models
from alttprbot.alttprgen import generator

from ..api import discord

presets_blueprint = Blueprint('presets', __name__)

@presets_blueprint.route('/presets', methods=['GET'])
async def all_presets():
    try:
        user = await discord.fetch_user()
        logged_in = True
    except Unauthorized:
        user = None
        logged_in = False

    namespaces = await models.PresetNamespaces.all()

    return await render_template('preset_namespaces_all.html', logged_in=logged_in, user=user, namespaces=namespaces)

@presets_blueprint.route('/presets/me', methods=['GET'])
@requires_authorization
async def my_presets():
    user = await discord.fetch_user()
    ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)

    return redirect(f"/presets/manage/{ns_current_user.name}")


@presets_blueprint.route('/presets/create', methods=['GET'])
@requires_authorization
async def new_preset():
    user = await discord.fetch_user()
    ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)

    return await render_template('preset_new.html', logged_in=True, user=user, ns_current_user=ns_current_user, randomizers=generator.PRESET_CLASS_MAPPING.keys())


@presets_blueprint.route('/presets/create', methods=['POST'])
@requires_authorization
async def new_preset_submit():
    user = await discord.fetch_user()
    payload = await request.form
    request_files = await request.files
    ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)

    if not re.match("^[a-zA-Z0-9_]*$", payload['preset_name']):
        return await render_template('error.html', logged_in=True, user=user, title="Unauthorized", message="Invalid preset name provided.")

    preset_data, _ = await models.Presets.update_or_create(
        preset_name=payload['preset_name'],
        randomizer=payload['randomizer'],
        namespace=ns_current_user,
        defaults={
            'content': request_files['presetfile'].read().decode()
        }
    )

    return redirect(f"/presets/manage/{ns_current_user.name}/{preset_data.randomizer}/{preset_data.preset_name}")


@presets_blueprint.route('/presets/manage/<string:namespace>', methods=['GET'])
# @requires_authorization
async def presets_for_namespace(namespace):
    try:
        user = await discord.fetch_user()
        logged_in = True
        ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)
        is_owner = ns_current_user.name == namespace
    except Unauthorized:
        user = None
        logged_in = False
        ns_current_user = None
        is_owner = False

    ns_data = await models.PresetNamespaces.get(name=namespace)
    presets = await models.Presets.filter(namespace__name=namespace)

    return await render_template('preset_namespace.html', logged_in=logged_in, user=user, is_owner=is_owner, ns_data=ns_data, presets=presets)


@presets_blueprint.route('/presets/manage/<string:namespace>/<string:randomizer>', methods=['GET'])
# @requires_authorization
async def presets_for_namespace_randomizer(namespace, randomizer):
    try:
        user = await discord.fetch_user()
        logged_in = True
        ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)
        is_owner = ns_current_user.name == namespace
    except Unauthorized:
        user = None
        logged_in = False
        ns_current_user = None
        is_owner = False

    ns_data = await models.PresetNamespaces.get(name=namespace)
    presets = await models.Presets.filter(randomizer=randomizer, namespace__name=namespace).only('id', 'preset_name', 'randomizer')

    return await render_template('preset_namespace.html', logged_in=logged_in, user=user, is_owner=is_owner, ns_data=ns_data, presets=presets)


@presets_blueprint.route('/presets/manage/<string:namespace>/<string:randomizer>/<string:preset>', methods=['GET'])
async def get_preset(namespace, randomizer, preset):
    try:
        user = await discord.fetch_user()
        logged_in = True
        ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)
        is_owner = ns_current_user.name == namespace
    except Unauthorized:
        user = None
        logged_in = False
        ns_current_user = None
        is_owner = False

    ns_data = await models.PresetNamespaces.get(name=namespace)
    preset_data = await models.Presets.get(preset_name=preset, randomizer=randomizer, namespace__name=namespace)

    return await render_template('preset_view.html', logged_in=logged_in, user=user, is_owner=is_owner, ns_data=ns_data, preset_data=preset_data)


@presets_blueprint.route('/presets/download/<string:namespace>/<string:randomizer>/<string:preset>', methods=['GET'])
async def download_preset(namespace, randomizer, preset):
    preset_data = await models.Presets.get(preset_name=preset, randomizer=randomizer, namespace__name=namespace)

    return await send_file(
        BytesIO(preset_data.content.encode()),
        mimetype="application/octet-stream",
        attachment_filename=f"{namespace}-{preset}.yaml",
        as_attachment=True
    )


@presets_blueprint.route('/presets/manage/<string:namespace>/<string:randomizer>/<string:preset>', methods=['POST'])
@requires_authorization
async def update_preset(namespace, randomizer, preset):
    user = await discord.fetch_user()
    payload = await request.form
    request_files = await request.files
    ns_current_user = await generator.create_or_retrieve_namespace(user.id, user.name)
    is_owner = ns_current_user.name == namespace

    if not is_owner:
        return await render_template('error.html', logged_in=True, user=user, title="Unauthorized", message="You are not the owner of this preset.")

    preset_data = await models.Presets.get(preset_name=preset, randomizer=randomizer, namespace__name=namespace)

    if 'delete' in payload:
        await preset_data.delete()
        return redirect(f"/presets/manage/{namespace}")

    preset_data.content = request_files['presetfile'].read().decode()

    await preset_data.save()

    return redirect(f"/presets/manage/{namespace}/{randomizer}/{preset}")

# @presets_blueprint.route('/presets/<str:namespace>', methods=['POST'])
# @requires_authorization
# async def update_namespace():
#     user = await discord.fetch_user()
#     namespace = await generator.create_or_retrieve_namespace(user.id, user.name)