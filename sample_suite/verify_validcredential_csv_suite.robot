*** Settings ***
Documentation       Connecting CSV file

Resource            ../Resource/Base/CommonFunctionalities.resource
Library             DataDriver    file=../test_data/validcredential.csv

Test Setup          Launch Browser
Test Teardown       Close Browser
Test Template       Verify Valid Credential Template


*** Test Cases ***
Verify Valid Credential_${TC}


*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    name=Submit
    Page Should Contain    ${expected_value}
