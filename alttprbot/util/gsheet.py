from oauth2client.service_account import ServiceAccountCredentials
from config import Config as c  # pylint: disable=no-name-in-module

def get_creds():
    return ServiceAccountCredentials.from_json_keyfile_dict(
        c.gsheet_api_oauth,
        [
            'https://spreadsheets.google.com/feeds',
            'https://www.googleapis.com/auth/drive',
            'https://www.googleapis.com/auth/spreadsheets'
        ]
    )