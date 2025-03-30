*** Settings ***
Documentation     Go to SPU Website by Web Browser.
Library           SeleniumLibrary

*** Variables ***
${url}            http://localhost:5173/login
${email}    AtitayaAdmin@gmail.com
${password}    1234

*** Keywords ***
Login Admin
    Click Element    xpath=//*[@id="root"]/div/div[2]/div[1]/div/button[1]
    Input Text    email    ${email}    
    Input Password    password    ${password}
    Click Element    xpath=//*[@id="root"]/div/div[2]/div[1]/form/button
    Click Button    xpath=/html/body/div[2]/div/div[6]/button[1] 

*** Test Cases ***
TO GO TO Uknowme WEB
    Open Browser    ${url}    Chrome
    Maximize Browser Window
    Login Admin
    