*** Settings ***
Documentation     Utils
Library           SeleniumLibrary

*** Keywords ***
Wait and Capture Screenshot   
    [Arguments]    ${t}
    Sleep    ${t}
    Capture Page Screenshot

Wait
    [Arguments]    ${t}
    Sleep    ${t}

