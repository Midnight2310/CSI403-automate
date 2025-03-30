*** Settings ***
Documentation     Go to SPU Website by Web Browser.
Library           SeleniumLibrary

*** Test Cases ***
TO GO TO SPU WEB
    Open Browser    https://www.spu.ac.th   Chrome

TC GO SCMS
    Open Browser    https://studentscms.spu.ac.th/estudent/estudentlogin1.cfm   Chrome
    Input Text  username    65054924
    Input Password  password    1103900143193
   