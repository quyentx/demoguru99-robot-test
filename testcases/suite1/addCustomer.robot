*** Settings ***
Documentation     This file implements the login test cases
Resource          ../../resources/auth-res.robot
Resource          ../../resources/addCus-res.robot
Library           SeleniumLibrary
Suite Setup     Login Successfully
Suite Teardown  Close Browser

*** Test Cases ***
Add customer successfull
    Open form to add new customer
    Input customer name     ${CUSTOMER_NAME}
    Input Date-of-birth   ${DOB_VALUE}
    Input address  ${ADDRESS}
    Input city  ${CITY}
    Input state  ${STATE}
    Input PIN  ${PIN}
    Input phone number  ${PHONE_NO}
    Input email address  ${EMAIL_ADDR}
    Input customer password  ${PASSWD}
    Submit register form
    Customer information page should be displayed

Add customer with dob to be missing
    Open form to add new customer
    Input customer name     ${CUSTOMER_NAME}
    Set focus on    ${css.customerDOB}
    Input address  ${ADDRESS}
    Input city  ${CITY}
    Input state  ${STATE}
    Input PIN  ${PIN}
    Input phone number  ${PHONE_NO}
    Input email address  ${EMAIL_ADDR}
    Input customer password  ${PASSWD}
    DOB field data validation message should be displayed

Add customer with name to be missing
    Open form to add new customer
    Set focus on    ${xpath.customerName}
    Input address  ${ADDRESS}
    Input city  ${CITY}
    Input state  ${STATE}
    Input PIN  ${PIN}
    Input phone number  ${PHONE_NO}
    Input email address  ${EMAIL_ADDR}
    Input customer password  ${PASSWD}
    Customer name field data validation message should be displayed

Add customer with address to be missing
    Open form to add new customer
    Input customer name     ${CUSTOMER_NAME}
    Set focus on   ${name.customerAddress}
    Input city  ${CITY}
    Input state  ${STATE}
    Input PIN  ${PIN}
    Input phone number  ${PHONE_NO}
    Input email address  ${EMAIL_ADDR}
    Input customer password  ${PASSWD}
    Address field data validation message should be displayed