*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${USERNAME}   standard_user
${PASSWORD}   secret_sauce
${BROWSER}    Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window

Input Valid Credentials
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button

Login Should Be Successful
    Wait Until Element Is Visible    css:.inventory_list    timeout=10s
