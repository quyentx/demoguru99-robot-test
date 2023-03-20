*** Settings ***
Documentation  This file prepares resources for the test suite
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${USER_NAME}     mngr486705
${ADMIN_PASSWORD}    yzUdAsY
@{LIST_CREDENTIAL}       mngr486706      AvYneby
&{DICT_CREDENTIAL}      username=mngr486706     pass=AvYneby
${BASE_URL}         https://demo.guru99.com
${LOGIN_URL}      ${BASE_URL}/v4
${HOME_URL}    ${BASE_URL}/v4/manager/Managerhomepage.php

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Login Page Should Be Opened

Login Page Should Be Opened
    Title Should Be    Guru99 Bank Home Page

Input Username
    [Arguments]    ${username}
    Input Text    //input[@name='uid']    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    //input[@name='password']    ${password}

Input login credentials from list
    [Arguments]     @{LIST_CREDENTIAL}
    Input Text      //input[@name='uid']    ${LIST_CREDENTIAL}[0]
    Input Text      //input[@name='password']       ${LIST_CREDENTIAL}[1]

Input login credentials from dict
    [Arguments]     &{DICT_CREDENTIAL}
    Input Text      //input[@name='uid']    ${DICT_CREDENTIAL}[username]
    Input Text      //input[@name='password']       ${DICT_CREDENTIAL}[pass]

Submit Login Credentials
    Click Button    //input[@value='LOGIN']

Welcome Page Should Be Open
    Location Should Be    ${HOME_URL}
    Title Should Be    Guru99 Bank Manager HomePage

Login Successfully
    Open Browser To Login Page
    Input Username    ${USER_NAME}
    Input Password    ${ADMIN_PASSWORD}
    Submit Login Credentials

Login
    [Arguments]    ${USER_NAME}    ${ADMIN_PASSWORD}
    Input Username    ${USER_NAME}
    Input Password    ${ADMIN_PASSWORD}
    Submit Login Credentials