*** Settings ***
Documentation     Test Registration and Use Gmail
Library           SeleniumLibrary
Resource          untilFunction.robot

*** Variables ***
${url}            https://scms.spu.ac.th/
${username}    65054924
${password}    1103900143193
${expectedId}    รหัสนักศึกษา
${expectedName}    ปิยย์กฤษณ์ 
${expectedSurName}    วงศ์เกษมศักดิ์
${expectedFaculty}     คณะ เทคโนโลยีสารสนเทศ 
${expected}      สาขาวิชา วิทยาการคอมพิวเตอร์และนวัตกรรมการพัฒนาซอฟต์แวร์   


*** Test Cases ***
TC-S0101 Login SCMS
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="account2"]/div[1]/div[1]/div[1]/div/div/a
    Click Element    xpath=//*[@id="account2"]/div[1]/div[1]/div[1]/div/div/a
    Wait Until Element Is Visible    name=username
    Input Text    name=username    ${username}
    Wait Until Element Is Visible    name=password
    Input Password    name=password    ${password}
    Wait Until Element Is Visible    xpath=//*[@id="userForm"]/div[4]/button
    Click Element    xpath=//*[@id="userForm"]/div[4]/button
    Wait Until Element Is Visible    xpath=//*[@id="formDetail"]/div/a
    Click Element    xpath=//*[@id="formDetail"]/div/a
    Wait Until Element Is Visible    xpath=//*[@id="clickmenu01a"]/button
    Click Element    xpath=//*[@id="clickmenu01a"]/button
    Wait Until Element Is Visible    xpath=//*[@id="clickmenu01a"]/div/div/div/div/div/div[1]/a
    Click Element    xpath=//*[@id="clickmenu01a"]/div/div/div/div/div/div[1]/a
    Wait    5s
    Capture Page Screenshot


TC-S0201 Login SCMS
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="account2"]/div[1]/div[1]/div[1]/div/div/a
    Click Element    xpath=//*[@id="account2"]/div[1]/div[1]/div[1]/div/div/a
    Wait Until Element Is Visible    name=username
    Input Text    name=username    ${username}
    Wait Until Element Is Visible    name=password
    Input Password    name=password    ${password}
    Wait Until Element Is Visible    xpath=//*[@id="userForm"]/div[4]/button
    Click Element    xpath=//*[@id="userForm"]/div[4]/button
    Wait Until Element Is Visible    xpath=//*[@id="formDetail"]/div/a
    Click Element    xpath=//*[@id="formDetail"]/div/a
    Wait Until Element Is Visible    xpath=//*[@id="clickmenu01a"]/button
    Click Element    xpath=//*[@id="clickmenu01a"]/button
    Wait Until Element Is Visible    xpath=//*[@id="clickmenu01a"]/div/div/div/div/div/div[1]/a
    Click Element    xpath=//*[@id="clickmenu01a"]/div/div/div/div/div/div[1]/a
    Wait Until Element Is Visible    xpath=//*[@id="tab6-tab"]/a    10s
    Click Element    xpath=//*[@id="tab6-tab"]/a
    Wait and Capture Screenshot    5s
    