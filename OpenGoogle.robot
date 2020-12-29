*** Settings ***
Library  Selenium2Library

Test Teardown  Close all Browsers

*** Variables ***
${Browser}  Chrome
${googleURL}  http://www.google.com

*** Keywords ***
Open Web
    Open Browser  ${googleURL}  ${Browser}

Wait to show
    Wait Until Page Contains     www.google.com

*** Test Cases ***
TC_XXXX_001 - Test Open Google
    Open Web
    Wait to show  


