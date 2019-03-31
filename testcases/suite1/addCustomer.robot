*** Settings ***
Documentation     This class implements the add new customer tests
Resource          ../../resources/auth-res.robot
Resource          ../../resources/addCus-res.robot
Library           SeleniumLibrary
Suite Setup     Login Successfully
Suite Teardown  Close Browser

*** Test Cases ***
Add customer successfully
    Open form to add new customer
    Input customer name     ${CUSTOMER_NAME}
    Input Date-of-birth      ${DOB_VALUE}
    Input address  ${ADDRESS}
    Input city  ${CITY}
    Input PIN  ${PIN}
    Input phone number  ${PHONE_NO}
    Input email address  ${EMAIL_ADDR}
    Input customer password  ${PASSWD}
    Submit register form