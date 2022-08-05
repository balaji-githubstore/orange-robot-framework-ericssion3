*** Settings ***
Documentation       This files contains browser configuration and reusable keywords

Library             SeleniumLibrary
Library             DriverSetup.py


*** Variables ***
${BROWSER_NAME}     edge
${URL}              https://opensource-demo.orangehrmlive.com/
${REMOTEURL}        http://172.17.67.65:4444


*** Keywords ***
Launch Browser
    IF    '${REMOTEURL}' == 'NA'
        ${exec_path}    Get Driver Path    browser_name=${BROWSER_NAME}
        Open Browser    browser=${BROWSER_NAME}    executable_path=${exec_path}
    ELSE
        Open Browser    browser=${BROWSER_NAME}    remote_url=${REMOTEURL}
    END

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    path=${EXECDIR}${/}screenshot
    Go To    url=${URL}
