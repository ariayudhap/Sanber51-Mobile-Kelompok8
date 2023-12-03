*** Settings ***
Resource        ../pageObjects/bookObject/bookPage.robot
Resource        ../pageObjects/base/doLogin.robot 

*** Test Cases ***

Successfull Flight Booking
    Run Keyword    Login Valid Credential
    Click Booking Button
    Click From City button
    From City Select
    CLick To City Button
    To City Select
    Click Class Button
    Class Select
    Click Start Date Button
    Start Date Select
    Click Start Date Ok Button
    Click End Date Button
    End Date Select
    End Date Ok Button
    Flight Radio Button
    Book Confirm Button
    Flight Price Button
    Price Confirm Button
    Book Successfull Confirmation
    Run Keyword    Close Flight Apllication

Booking Without Sign in
    Open Flight Application
    Sleep    2s
    Click Book Button Without Login
    Page Should Not Contain Element    ${from-city-button}
    Close Flight Apllication

Booking Without Choose Start And End Date
    Run Keyword    Login Valid Credential
    Click Booking Button
    Click From City button
    From City Select
    CLick To City Button
    To City Select
    Click Class Button
    Class Select
    Flight Radio Button
    Book Confirm Button
    Should Be Equal    ${choose-price-page}    ${choose-city-page}
    Close Flight Apllication

Booking Without Choose Order type
    Run Keyword    Login Valid Credential
    Click Booking Button
    Click From City button
    From City Select
    CLick To City Button
    To City Select
    Click Class Button
    Class Select
    Click Start Date Button
    Start Date Select
    Click Start Date Ok Button
    Click End Date Button
    End Date Select
    End Date Ok Button
    Book Confirm Button
    Should Be Equal    ${choose-price-page}    ${choose-city-page}
    Close Flight Apllication