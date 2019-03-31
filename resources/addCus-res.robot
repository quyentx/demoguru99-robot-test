*** Settings ***
Documentation  This file prepares resources for the test suite
Library           SeleniumLibrary

*** Variables ***
${DOB_VALUE}        01011990
${CUSTOMER_NAME}        Tran Huy Hoang
${ADDRESS}      Intracom
${CITY}     Hanoi
${STATE}    Hanoi
${PIN}      236987
${PHONE_NO}     0987654321
${EMAIL_ADDR}   hoangth@mail.com
${PASSWD}       hoangtran92

${xpath.newCustomer}    //a[contains(text(),'New Customer')]
${xpath.customerName}   //input[@name='name']
${xpath.customerDOB}    //input[@id='dob']
${xpath.customerAddress}    //textarea[@name='addr']
${xpath.customerCity}        //input[@name='city']
${xpath.customerState}      //input[@name='state']
${xpath.customerPIN}     //input[@name='pinno']
${xpath.customerPhone}      //input[@name='telephoneno']
${xpath.customerEmail}  //input[@name='emailid']
${xpath.customerPass}       //input[@name='password']

*** Keywords ***
Open form to add new customer
    Click Element    ${xpath.newCustomer}

Input customer name
    [Arguments]    ${customer_name}
    Input Text      ${xpath.customerName}       ${customer_name}

Input Date-of-birth
    [Arguments]      ${dob_value}
    Input Text      ${xpath.customerDOB}      ${dob_value}

Input address
    [Arguments]    ${address}
    Input Text      ${xpath.customerAddress}      ${address}

Input city
    [Arguments]    ${city}
    Input Text      ${xpath.customerCity}       ${city}

Input state
    [Arguments]     ${state}
    Input Text      ${xpath.customerState}      ${state}

Input PIN
    [Arguments]     ${pin}
    Input Text      ${xpath.customerPIN}      ${pin}

Input phone number
    [Arguments]     ${phoneno}
    Input Text      ${xpath.customerPhone}     ${phoneno}

Input email address
    [Arguments]     ${email}
    Input Text      ${xpath.customerEmail}      ${email}

Input customer password
    [Arguments]     ${cus_pass}
    Input Text      ${xpath.customerPass}       ${cus_pass}

Submit register form
    Click Button        //input[@value='Submit']

Set focus on
    [Arguments]         ${element}
    Click Element       ${element}

Customer information page should be displayed
    Element Should Contain     //p[@class='heading3']      Customer Registered Successfully!!!

Customer name field data validation message should be displayed
    Element Should Be Visible       //label[contains(text(),'Customer name must not be blank')]

Address field data validation message should be displayed
    Element Should Be Visible       //label[contains(text(),'Address Field must not be blank')]

DOB field data validation message should be displayed
    Element Should Be Visible       //label[@id='message24']