*** Settings ***
Documentation       This file handles all the element present in the login Page

Resource            ../Base/CommonFunctionalities.resource
Resource            AddEmployeePage.resource


*** Variables ***
${USERNAME_LOCATOR}             id=txtUsername
${PASSWORD_LOCATOR}             css=#txtPassword
${LOGIN_LOCATOR}                xpath=//input[@name='Submit']
${FORGOTPASSWORD_LOCATOR}       partial link=Forgot your
${ERROR_LOCATOR}                id=spanMessage


*** Keywords ***
Enter Username
    [Documentation]    Types the given text into the username field \n
    ...    Examples \n
    ...    | Enter Username | john |
    ...    | Enter Username | peter |
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Documentation]    Types the given text into the password field \n
    ...    Examples \n
    ...    | Enter Password | john123 |
    ...    | Enter Password | peter12 |
    [Arguments]    ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click Login
    [Documentation]    Click on login
    ...    Examples
    ...    | Click Login |
    Click Element    ${LOGIN_LOCATOR}

Click Forgot Password
    [Documentation]    Click on login
    ...    Examples
    ...    | Click Forgot Password |
    Click Element    ${FORGOTPASSWORD_LOCATOR}

Validate Error Message
    [Documentation]    Validate the error message shown on the login field
    ...    Examples
    ...    | Validate Error Message | Invalid Credentials |
    ...    | Validate Error Message | Username cannot be empty |
    [Arguments]    ${expected_error}
    Element Text Should Be    ${ERROR_LOCATOR}    ${expected_error}

Login Into The OrangeHRM
    [Documentation]    Login Into The OrangeHRM
    ...    Examples
    ...    | Login Into The OrangeHRM | Admin | admin123 |
    [Arguments]    ${username}    ${password}
    Enter username    ${username}
    Enter Password    ${password}
    Click Login
