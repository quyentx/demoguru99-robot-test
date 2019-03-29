*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resources/resources.robot
Library           SeleniumLibrary

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

#*** Test Cases ***
#The user can search for flights
#    [Tags]	    search_flights
#    Open Browser To Login Page    http://blazedemo.com/   Chrome
#    Select From List By Value   xpath://select[@name='fromPort']  Paris
#    Select From List by Value   xpath://select[@name='toPort']    London
#    Click Button    css:input[type='submit']
#    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
#    Should Not Be Empty     ${flights}
#    Close All Browsers