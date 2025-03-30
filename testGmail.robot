*** Settings ***
Documentation     Test Registration and Use Gmail
Library           SeleniumLibrary
Resource          untilFunction.robot

*** Variables ***
${URL}    https://workspace.google.com/intl/th/gmail/
${BROWSER}    chrome
${USERNAME}    Nemesisp09@gmail.com
${PASSWORD}    Midnight1234.
${FIRSTNAME}    Piyakrit
${LASTNAME}    Wongkasamesak
${DAY}    23
${YEAR}    2003
${TEL}    0971152270

*** Test Cases ***
TC-S0101 Registration Gmail for Personal
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//*[@id="root"]/div[1]/header/div/div[5]/gws-dropdown-button/div
    Click Element    xpath=//*[@id="root"]/div[1]/header/div/div[5]/gws-dropdown-button/a[1]
    # input firstname and lastname
    Input Text  firstName    ${FIRSTNAME}
    Input Password  lastName    ${LASTNAME}
    Click Element    xpath=//*[@id="collectNameNext"]/div/button
    Wait    5s
    # input date and birth gender
    Input Text  day    ${DAY}
    Input Text  year    ${YEAR}
    Wait    5s
    Click Element    xpath=//*[@id="month"]
    Click Element    xpath=//*[@id="month"]/option[11]
    Wait    5s
    Click Element    xpath=//*[@id="gender"]
    Click Element    xpath=//*[@id="gender"]/option[3]
    Wait    5s
    Click Element    xpath=//*[@id="birthdaygenderNext"]/div/button
    Wait    5s
    #select email
    Click Element    xpath=//*[@id="yDmH0d"]/c-wiz/div/div[2]/div/div/div/form/span/section/div/div/div[1]/div[1]/div/span/div[1]/div/div[1]/div
    Wait    5s
    Click Element    xpath=//*[@id="next"]/div/button
    Wait    5s
    # input password
    Input Password  Passwd   ${PASSWORD}
    Input Password  PasswdAgain    ${PASSWORD}
    Wait    5s
    Click Element    xpath=//*[@id="createpasswordNext"]/div/button
    Wait    10s
    # input phone number
    Input Text  phoneNumberId    ${TEL}
    Wait    5s
    Click Element    xpath=//*[@id="yDmH0d"]/c-wiz/div/div[3]/div/div/div/div/button
    Wait and Capture Screenshot    5s

TC-S0102 LogIn Gmail for Personal
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//*[@id="root"]/div[1]/header/div/div[5]/a[2]
    Input Text  identifierId    ${USERNAME}
    Click Element    xpath=//*[@id="identifierNext"]/div/button
    Wait    5s
    Input Password  Passwd    ${PASSWORD}
    Wait    5s
    Click Element    //*[@id="passwordNext"]/div/button
    Wait and Capture Screenshot    5s
    
TC-S0103 LogOut Gmail for Personal
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//*[@id="root"]/div[1]/header/div/div[5]/a[2]
    Input Text  identifierId    ${USERNAME}
    Click Element    xpath=//*[@id="identifierNext"]/div/button
    Wait    5s
    Input Password  Passwd    ${PASSWORD}
    Wait    5s
    Click Element    //*[@id="passwordNext"]/div/button
    Wait    10s
    Click Element    xpath=//*[@id="gb"]/div[2]/div[3]/div[1]/div[2]/div/a
    Wait    5s
    Click Link    xpath=//*[@id="yDmH0d"]/c-wiz/div/div/div/div/div[2]/div/div[3]/div[2]/span/span[2]/a
    Wait and Capture Screenshot    5s