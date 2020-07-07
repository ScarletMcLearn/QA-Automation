# -*- coding: utf-8 -*-

from behave import *

import sys
sys.path.insert(0,
                '/home/scarlet/Projects/Automation/Assesment/Py Assesment/1/Behave Code/features/utils'
                )

import config

import requests

import json



@then(u'File uploaded successfuly to One Drive')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then File uploaded successfuly to One Drive'
                              )


@when(u'the User makes GET request to API')
def step_impl(context):
    search_query = config.file_to_search
    authorization = config.authorization_token
    context.resp = \
        requests.get("https://graph.microsoft.com/v1.0/me/drive/root/search(q='"
                      + search_query + "')?select=name,id,webUrl",
                     headers={'authorization': authorization})




@then(u'File found successfuly on One Drive')
def step_impl(context):
    jsn = context.resp.content.decode('utf8').replace("'", '"')
    jsn_uptd = json.loads(jsn)
    jsn_uptd_2 = json.dumps(jsn_uptd, indent=4, sort_keys=True)

    assert context.resp.status_code == 200 \
        and len(json.loads(jsn_uptd_2)['value']) > 0


@given(u'the User has valid Authentication Key')
def has_auth(context):
    assert bool(config.authorization_token) == True


@when(u'the User makes PUT request to API')
def step_impl(context):

    filepath = config.file_to_upload

    with open(filepath) as file_hander:

        # filepath = config.file_to_upload

        mydata = file_hander.read()
        response = \
            requests.put('https://graph.microsoft.com/v1.0/me/drive/root:/'
                          + filepath + ':/content',
                         headers={'Authorization': config.authorization_token},
                         data=mydata)
        context.put_code = response.status_code


@then(u'response status code shows file uploaded')
def step_impl(context):
    assert context.put_code == 201 or context.put_code == 200

