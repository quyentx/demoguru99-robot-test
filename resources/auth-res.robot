*** Settings ***
Documentation  This file prepares resources for the test suite
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Firefox
${USER_NAME}     mngr187295
${ADMIN_PASSWORD}    jetatYb
${BASE_URL}         http://www.demo.guru99.com
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
