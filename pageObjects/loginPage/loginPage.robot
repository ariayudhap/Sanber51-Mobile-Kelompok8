*** Settings ***
Resource    ../base/base.robot
Variables   login-locators.yaml

*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username_input}
    Input Text    ${username_input}    ${username}

Input Password On Login Page
...    [Arguments]    ${password}
        Wait Until Element Is Visible    ${password_input}
    Input Text    ${password_input}    ${password}

Click Sign In Button On Login Page
    Sleep    5s
    Click Element    ${sign-in-button}