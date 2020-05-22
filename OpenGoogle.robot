*** Settings ***
Library  Selenium2Library

Test Teardown  Close all Browsers

*** Variables ***
${Browser}  Chrome
${googleURL}  http://www.google.com

*** Keywords ***
Open Web
    Open Browser  ${googleURL}  ${Browser}

Find and input text
    Input Text  name:q  Mobile

Click btn
    click Button  btnK

Wait to show
    Wait Until Page Contains     www.siamphone.com

*** Test Cases ***
TC_XXXX_001 - Test Open Google
    Open Web
    Find and input text
    Click btn
    Wait to show  


