*** Settings ***
Resource        ../base/base.robot
Variables        home-locators.yaml

*** Keywords ***
Click Sign In Button On Home Screen
    Click Element    ${sign-in-button}