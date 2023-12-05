*** Settings ***
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/bookflightObject/bookflight.robot

*** Keywords ***

*** Test Cases ***
Open and login Flight Application
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page     ${valid-username}
    Input Password On Login page    ${valid-password}
    Click Button Sign In On Login page

Book Flight
    Click Book Button On Book Page
    Choose fligt from            
    Choose Destination City 
    Choose Class
    Choose Start Date
    Choose End Date
    Choose Flight
    Click Button Book
    Choose Price
    Click Confirm Order




    
    