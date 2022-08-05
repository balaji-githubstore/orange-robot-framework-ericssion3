*** Settings ***
Documentation    This suite handles test cases related to valid credential 
...    connected with scenario SC_OH_2 and TC_OH_03

Resource    ../Resource/Base/CommonFunctionalities.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup    Launch Browser
Test Teardown    Run keywords     Capture Page Screenshot    AND   Close Browser
Test Template    Verify Invalid Credential Template

*** Test Cases ***
TC1    John    John123    Invalid credentials
TC2    Peter    Peter123    Invalid credentials    
TC3    ${EMPTY}    admin123    Username cannot be empty
TC4    admin123    ${EMPTY}    Password cannot be empty

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${expected_error} 
    Log  Code in ${BROWSER_NAME}
    Enter username    ${username}
    Enter Password    ${password} 
    Click Login
    Validate Error Message   ${expected_error}  
    
    
