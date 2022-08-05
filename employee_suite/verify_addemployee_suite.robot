*** Settings ***
Documentation    This suite handles test cases related to add employee  
...    connected with scenario SC_OH_09 and TC_OH_017

Resource    ../Resource/Base/CommonFunctionalities.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource
Resource    ../Resource/Pages/AddEmployeePage.resource

Test Setup    Launch Browser
Test Teardown    Close Browser

*** Test Cases ***
Verify Add Employee Test    
    Login Into The OrangeHRM    Admin    admin123
    Click PIM
    Click Add Employee Menu
    Enter FirstName    Jack    


