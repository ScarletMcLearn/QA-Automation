import configparser
import sys
import datetime
import json

import requests

inspection_request_template = """
{
    "customer": "nissan",
    "inspectionType": 2,
    "requestType": "NEW",
    "accountNo": "{ACCOUNT_NUMBER}",
    "requestDate": "2017-05-24",
    "maturityDate": "2017-05-27",
    "groundingDate": "2015-05-22",
    "locationCode": "03005",
    "location": {
        "name": "INFINITI OF MACON",
        "street": "61899 Front ST",
        "city": "Dearborn",
        "state": "MI",
        "zip": "48323"
    },
    "vehicles": [{
      "vin": "{VIN}"
    }],
    "lesseeLocation": {
        "street": "34405 12 Mile RD",
        "city": "Farmington Hills",
        "state": "MI",
        "zip": "48331"
    },
    "lesseeFirstName": "{LESSEE_FIRST_NAME}",
    "lesseeLastName": "{LESSEE_LAST_NAME}",
    "lesseeEmail": "Fisher@mail.com",
    "homePhone": "5865543434",
    "businessPhone": "4874567890",
    "faxNumber": "1234567890",
    "email": "email@domain.tld",
    "contactFirstName": "Bob",
    "contactLastName": "Smith",
    "comments": "This inspection is used for automated testing. Please do not alter."
}
"""


def main():
    # Get environment name.
    if len(sys.argv) < 2:
        sys.stderr.write('Error: environment name not specified\n')
        sys.exit(1)
    env = sys.argv[1]

    # Read the configuration file for this environment.
    config = configparser.ConfigParser()
    config.read('create_config_{}.ini'.format(env))

    # Create the inspection request.
    account_number = datetime.datetime.now().strftime('%Y%m%d%H%M%Stest')
    inspection_request = inspection_request_template\
        .replace('{ACCOUNT_NUMBER}', account_number)\
        .replace('{VIN}', config['request_data']['vin'])\
        .replace('{LESSEE_FIRST_NAME}', config['request_data']['lessee_first_name'])\
        .replace('{LESSEE_LAST_NAME}', config['request_data']['lessee_last_name'])

    # Post the inspection request to the request processor.
    headers = {
        'Authorization': 'Bearer ' + config['RP']['jwt'],
        'Content-Type': 'application/json'
    }
    r = requests.post(config['RP']['url'] + '/api/v2/inspection-request/import',
                      headers=headers,
                      data=inspection_request)
    r.raise_for_status()

    # Display the request ID.
    sys.stderr.write('Successfully created request with Id: {}\n'.format(r.json()['id']))

    # Recreate the INI file for behave, for this environment.
    with open(env + '.ini', 'w') as f:
        f.write('[env_values]\n')
        f.write('lss_url = {}\n'.format(config['LSS']['url']))
        f.write('vin = {}\n'.format(config['request_data']['vin']))
        f.write('account_no = {}\n'.format(account_number))
        f.write('lessee_first_name = {}\n'.format(config['request_data']['lessee_first_name']))
        f.write('lessee_last_name = {}\n'.format(config['request_data']['lessee_last_name']))
        f.write('\n')

    sys.stderr.write('Wrote {}.ini\n'.format(env))


if __name__ == '__main__':
    main()