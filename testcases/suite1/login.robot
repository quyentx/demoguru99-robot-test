*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ../../resources/auth-res.robot
Library           SeleniumLibrary

*** Test Cases ***
Login Successfully
    Open Browser To Login Page
    Input Username    ${USER_NAME}
    Input Password    ${ADMIN_PASSWORD}
    Submit Login Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser