*** Settings ***
Documentation     Test Registration and Use Gmail
Library           SeleniumLibrary
Resource          untilFunction.robot


*** Variables ***
${URL}    https://workspace.google.com/intl/th/gmail/
${BROWSER}    chrome
${expectedText}    Sign in

*** Test Cases ***
TC-S0101 Registration Gmail for Personal
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath=//*[@id="root"]/div[1]/header/div/div[5]/a[2]
    Element Text Should Be    xpath=//*[@id="headingText"]    ${expectedText}
    Wait and Capture Screenshot    5s