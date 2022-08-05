*** Settings ***
Documentation    This suite handles test cases related to valid credential 
...    connected with scenario SC_OH_2 and TC_OH_03

Resource    ../Resource/Base/CommonFunctionalities.resource

Test Setup    Launch Browser
Test Teardown    Close Browser


*** Test Cases ***
TC1    
    Log To Console    bala

TC2
    [Template]    Verify Invalid Credential Template
    John    John123    Invalid credential

TC3
    [Template]    Verify Invalid Credential Template
    John    John123    Invalid credential

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${expected_error} 
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password} 
    Click Element    name=Submit
    Element Text Should Be    id=spanMessage    ${expected_error}  
