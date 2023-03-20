*** Settings ***
Documentation     This file implements the login test cases
Resource    ../../resources/auth-res.robot
Library           SeleniumLibrary
Library    DataDriver    file=data_driver.csv    dialect=unix
Test Setup    Open Browser To Login Page
Test Teardown    Close Browser
Test Template    Login Template

*** Test Cases ***
Login successfully using data file ${USER_NAME}    ${USER_NAME}    ${ADMIN_PASSWORD}
    [Tags]    data_file

*** Keywords ***
Login Template    [Documentation]    Template for verifying login screen
    [Arguments]    ${USER_NAME}
    ...    ${ADMIN_PASSWORD}
    Login    ${USER_NAME}   ${ADMIN_PASSWORD}