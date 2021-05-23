ALTER TABLE `audit_generated_games` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `league_playoffs` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `nick_verification` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `patch_distribution` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgdailies` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `srl_races` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `srlnick` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_games` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `twitch_channels` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `alembic_version` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `daily` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `discord_server_categories` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `discord_server_lists` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `mention_counters` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `smz3_multiworld` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `spoiler_races` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `twitch_command_text` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `aerich` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `discord_server_list` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `seed_presets` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `voice_role` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `voicerole` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `config` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `permissions` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `reaction_group` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

ALTER TABLE `aerich` MODIFY `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `aerich` MODIFY `app` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `alembic_version` MODIFY `version_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `audit_generated_games` MODIFY `randomizer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `audit_generated_games` MODIFY `hash_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `audit_generated_games` MODIFY `permalink` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `audit_generated_games` MODIFY `gentype` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `audit_generated_games` MODIFY `genoption` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `config` MODIFY `parameter` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `config` MODIFY `value` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `daily` MODIFY `hash` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `discord_server_categories` MODIFY `category_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `discord_server_categories` MODIFY `category_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `discord_server_list` MODIFY `server_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `discord_server_list` MODIFY `invite_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `discord_server_lists` MODIFY `invite_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `discord_server_lists` MODIFY `server_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `league_playoffs` MODIFY `playoff_round` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `league_playoffs` MODIFY `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `league_playoffs` MODIFY `preset` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `patch_distribution` MODIFY `patch_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `patch_distribution` MODIFY `game` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `permissions` MODIFY `permission` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `reaction_group` MODIFY `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `reaction_group` MODIFY `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `reaction_role` MODIFY `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `reaction_role` MODIFY `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `seed_presets` MODIFY `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `seed_presets` MODIFY `randomizer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgdailies` MODIFY `slug` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgdailies` MODIFY `announce_message` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `sgdailies` MODIFY `racetime_category` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgdailies` MODIFY `racetime_goal` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgdailies` MODIFY `race_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `sgl2020_tournament` MODIFY `room_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` MODIFY `event` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` MODIFY `permalink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` MODIFY `seed` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` MODIFY `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` MODIFY `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament` MODIFY `platform` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `room_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `event` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `platform` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `permalink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `seed` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `sgl2020_tournament_bo3` MODIFY `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `smz3_multiworld` MODIFY `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `smz3_multiworld` MODIFY `preset` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `smz3_multiworld` MODIFY `randomizer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `spoiler_races` MODIFY `srl_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `spoiler_races` MODIFY `spoiler_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `srl_races` MODIFY `srl_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `srl_races` MODIFY `goal` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `srl_races` MODIFY `message` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `srlnick` MODIFY `srl_nick` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `srlnick` MODIFY `twitch_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `srlnick` MODIFY `rtgg_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_games` MODIFY `event` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `srl_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `episode_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `permalink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `spoiler` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `event` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournament_results` MODIFY `week` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `schedule_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `slug` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `helper_roles` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `goal` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `admin_roles` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `commentator_roles` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `mod_roles` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `tracker_roles` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `tournaments` MODIFY `lang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `twitch_channels` MODIFY `channel` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `twitch_channels` MODIFY `group` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `twitch_command_text` MODIFY `channel` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `twitch_command_text` MODIFY `command` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `twitch_command_text` MODIFY `content` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;