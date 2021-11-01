*** Settings ***
Documentation     This file implements the login test cases
Resource          ../../resources/auth-res.robot
Library           SeleniumLibrary

*** Test Cases ***
Login Successfully
    Open Browser To Login Page
    Input Username    ${USER_NAME}
    Input Password    ${ADMIN_PASSWORD}
#    Input login credentials from dict    &{DICT_CREDENTIAL}
#    Input login credentials from list       @{LIST_CREDENTIAL}
    Submit Login Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
