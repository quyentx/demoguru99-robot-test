*** Settings ***
Documentation     This file implements the login test cases
Resource          ../../resources/auth-res.robot
Library           SeleniumLibrary

# *** Test Cases ***

*** Test Cases ***
Login successfully standard style using template
    [Tags]    standard
    [Template]    Login Template
    mngr486705    yzUdAsY

Login successfully using credentials from dictionary
    [Tags]    standard
    Open Browser To Login Page
    Input login credentials from dict    &{DICT_CREDENTIAL}
    Submit Login Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Login successfully using credentials from list
    [Tags]    standard
    Open Browser To Login Page
    Input login credentials from list       @{LIST_CREDENTIAL}
    Submit Login Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

*** Keywords ***
Login Template    [Documentation]    Template for verifying login screen
    [Arguments]    ${USER_NAME}    ${ADMIN_PASSWORD}
    Open Browser To Login Page
    Login    ${USER_NAME}   ${ADMIN_PASSWORD}
    Welcome Page Should Be Open
    [Teardown]    Close Browser