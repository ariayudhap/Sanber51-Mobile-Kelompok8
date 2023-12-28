*** Settings ***
Resource    ../pageObjects/homePage/homePage.robot
Resource    ../pageObjects/loginPage/loginPage.robot

*** Variables ***
${INVALID_USERNAME}    invalid
${INVALID_PASSWORD}    1234567890

*** Test Cases ***
Login Invalid Credential
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${INVALID_USERNAME}
    Input Password On Login Page    ${INVALID_PASSWORD}
    Click Sign In Button On Login Page
    Close Flight Application