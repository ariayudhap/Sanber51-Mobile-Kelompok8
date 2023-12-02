*** Settings ***
Resource        ../homePageObject/homePage.robot
Resource        ../loginPageObject/loginPage.robot

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123

*** Keywords ***
Login Valid Credential
    Open Flight Application
    Sleep    2s
    Click Sign In Button On Home Page
    Sleep    2s
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Sleep    2s
    Click Sign In Button On Login Page
    Sleep    2s
