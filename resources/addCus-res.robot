*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${DOB}      //input[@id='dob']
${DOB_VALUE}        01011990
${CUSTOMER_NAME}        Tran Huy Hoang
${ADDRESS}      Intracom
${CITY}     Hanoi
${STATE}    Hanoi
${PIN}      236987
${PHONE_NO}     0987654321
${EMAIL_ADDR}   hoangth@mail.com
${PASSWD}       hoangtran92

*** Keywords ***
Open form to add new customer
    Click Element    //a[contains(text(),'New Customer')]

Input customer name
    [Arguments]    ${customer_name}
    Input Text      //input[@name='name']       ${customer_name}

Set focus on
    [Arguments]     ${element}
    Click Element        ${element}

Input day of birth
    [Arguments]     ${day_of_birth}
    Input Text      //input[@id='dob']      ${day_of_birth}

Input Date-of-birth
    [Arguments]     ${DOB}  ${DOB_VALUE}
    Set focus on    ${DOB}
    Input day of birth  ${DOB_VALUE}

Input address
    [Arguments]    ${address}
    Input Text      //textarea[@name='addr']       ${address}

Input city
    [Arguments]    ${city}
    Input Text      //input[@name='city']       ${city}

Input state
    [Arguments]     ${state}
    Input Text      //input[@name='state']      ${state}

Input PIN
    [Arguments]     ${pin}
    Input Text      //input[@name='pinno']      ${pin}

Input phone number
    [Arguments]     ${phoneno}
    Input Text      //input[@name='telephoneno']      ${phoneno}

Input email address
    [Arguments]     ${email}
    Input Text      //input[@name='emailid']      ${email}

Input customer password
    [Arguments]     ${cus_pass}
    Input Text      //input[@name='password']      ${cus_pass}

Submit register form
    Click Button        //input[@value='Submit']