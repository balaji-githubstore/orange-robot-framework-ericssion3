*** Settings ***
Documentation    This file handles all the element present in the main Page and all menu

Resource    ../Base/CommonFunctionalities.resource

*** Variables ***
${PIM_LOCATOR}       link=PIM
${ADDEMPLOYEE_LOCATOR}    link=Add Employee

*** Keywords ***
MainPage Should Contain
    [Arguments]    ${expected_value}
    Page Should Contain    ${expected_value}

Click PIM
    Click Element    ${PIM_LOCATOR}    

Click Add Employee Menu
    Click Element    ${ADDEMPLOYEE_LOCATOR}
