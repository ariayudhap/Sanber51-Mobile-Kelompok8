*** Settings ***
Resource        ../base/base.robot
Variables        login-locators.yaml

*** Keywords ***
Input Username On Login Page
    [Arguments]   ${username}
    Input Text    ${username-input}    ${username}

Input Password On Login Page
    [Arguments]   ${password}
    Input Text    ${password-input}    ${password}

Click Sign In Button On Login Page
    Click Element    ${sign-in-login-page}
