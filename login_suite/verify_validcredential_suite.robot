*** Settings ***
Documentation       This suite handles test cases related to valid credential
...                 connected with scenario SC_OH_2 and TC_OH_02

Resource            ../Resource/Base/CommonFunctionalities.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource

Library             DataDriver    file=../test_data/test_data.xlsx    sheet_name=VerifyValidCredential

Test Setup          Launch Browser
Test Teardown       Close Browser
Test Template       Verify Valid Credential Template


*** Test Cases ***
TC1


*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${expected_value}
    Enter username    ${username}
    Enter Password    ${password} 
    Click Login
    MainPage Should Contain    ${expected_value}
