*** Settings ***
Resource        ../Base/Base.robot
Resource        ../HomePageObject/homePage.robot
Variables       ../bookflightObject/book-locators.yaml
Variables       ../homePageObject/home-locators.yaml
Variables       ../loginPageObject/login-locators.yaml

*** Keywords ***
Click Sign Button
    Click Sign In Button On Home Screen

Input Username Sign In On Login Page
    [Arguments]       ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text        ${username-input}        ${username}

Input Password Sign In On Login Page
    [Arguments]        ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Password    ${password-input}        ${password}
Click Button Sign In On Login page
    
    Click Element    ${log-in-button}

Click Book Button On Book Page
    Wait Until Element Is Visible    ${book-button}
    Click Element     ${book-button}

Choose One Away Trip
    Wait Until Element Is Visible    ${one-away-element}
    Click Element    ${one-away-element}

Choose Round Trip
    Wait Until Element Is Visible    ${round-trip-element}
    Click Element    ${round-trip-element}
Choose fligt from
    Wait Until Element Is Visible    ${spinner-from}  
    Click Element    ${spinner-from}
    Wait Until Element Is Visible    ${city-option-from}
    Click Element    ${city-option-from}

Choose Destination City
    Wait Until Element Is Visible    ${spinner-to}
    Click Element    ${spinner-to}
    Wait Until Element Is Visible     ${city-option-to}
    Click Element    ${city-option-to}

Choose Class 
    Wait Until Element Is Visible    ${spinner-class}
    Click Element    ${spinner-class}
    Wait Until Element Is Visible    ${class-option}
    Click Element    ${class-option}
Choose Start Date
    Wait Until Element Is Visible    ${start-date}
    Click Element    ${start-date}
    Wait Until Element Is Visible     ${date-picker-start}
    Click Element    ${date-picker-start}
    Click Element    ${btnok-date}
Choose End Date
    Wait Until Element Is Visible    ${end-date}
    Click Element    ${end-date}
    Wait Until Element Is Visible     ${date-picker-start}
    Click Element    ${date-picker-end}
    Click Element    ${btnok-date}
Choose Flight 
    Wait Until Element Is Visible    ${flight-Radio-Button}
    Click Element    ${flight-Radio-Button}
Click Button Book
    Wait Until Element Is Visible    ${book-flight-button}
    Click Element    ${book-flight-button}

Choose Price 
     Wait Until Element Is Visible    ${choose-flight-book}
     Click Element    ${choose-flight-book}

Click Confirm Order
    Wait Until Element Is Visible    ${confirm-order}
     Click Element    ${confirm-order}

# Close Flight Application
#     Close Flight Application

    