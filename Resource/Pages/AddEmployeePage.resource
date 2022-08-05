*** Settings ***
Documentation    This file handles all the element present in the main Page and all menu

Resource    ../Base/CommonFunctionalities.resource

*** Variables ***
${FIRSTNAME_LOCATOR}       id=firstName

*** Keywords ***
Enter FirstName    
    [Arguments]    ${firstname}
    Input Text     ${FIRSTNAME_LOCATOR}   ${firstname}