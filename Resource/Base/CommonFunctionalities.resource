*** Settings ***
Documentation    This files contains browser configuration and reusable keywords

Library    SeleniumLibrary
Library    DriverSetup.py

*** Variables ***
${BROWSER_NAME}    edge
${URL}    https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser 
    ${exec_path}    Get Driver Path    browser_name=${BROWSER_NAME}
    Open Browser    browser=${BROWSER_NAME}    executable_path=${exec_path}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    path=${EXECDIR}${/}screenshot
    Go To    url=${URL}