*** Settings ***
Documentation     Test login functionality
Library           SeleniumLibrary
Resource          ../resources/keywords.robot

*** Test Cases ***
Valid Login Test
    Open Browser To Login Page
    Input Valid Credentials
    Login Should Be Successful
    Capture Page Screenshot
    Close Browser

Invalid Password Test
    Open Browser To Login Page
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     wrongpass
    Click Button  id=login-button
    Page Should Contain    Epic sadface: Username and password do not match
    Capture Page Screenshot
    Close Browser

Empty Username Test
    Open Browser To Login Page
    Input Text    id=password    ${PASSWORD}
    Click Button  id=login-button
    Page Should Contain    Epic sadface: Username is required
    Capture Page Screenshot
    Close Browser

Logout Test
    Open Browser To Login Page
    Input Valid Credentials
    Click Button    id=react-burger-menu-btn
    Sleep    1s
    Click Link      id=logout_sidebar_link
    Page Should Contain Element    id=login-button
    Capture Page Screenshot
    Close Browser

Add Item To Cart Test
    Open Browser To Login Page
    Input Valid Credentials
    Click Button    xpath=//button[contains(text(),'Add to cart')]
    Click Element   id=shopping_cart_container
    Page Should Contain    Your Cart
    Capture Page Screenshot
    Close Browser
