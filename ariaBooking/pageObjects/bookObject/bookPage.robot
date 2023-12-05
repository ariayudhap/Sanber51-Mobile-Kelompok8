*** Settings ***
Resource        ../base/base.robot
Variables        book-locator.yaml

*** Keywords ***
Click Booking Button
    Click Element    ${book-button}
    Sleep    3s
    
Click From City button
    Click Element    ${from-city-button}
    Sleep    3s

From City Select
    Click Element    ${from-city-select}
    Sleep    3s

CLick To City Button
    Click Element    ${to-city-button}
    Sleep    3s

To City Select
    Click Element    ${to-city-select}
    Sleep    3s

Click Class Button
    Click Element    ${class-button}
    Sleep    3s

Class Select
    Click Element    ${class-select}
    Sleep    3s

Click Start Date Button
    Click Element    ${start-date-button}
    Sleep    3s

Start Date Select
    Click Element    ${start-date-select}
    Sleep    3s

Click Start Date Ok Button
    Click Element    ${start-date-ok}
    Sleep    3s

Click End Date Button
    Click Element    ${end-date-button}
    Sleep    3s

End Date Select
    Click Element    ${end-date-select}
    Wait Until Element Is Visible    ${end-date-ok}

End Date Ok Button
    Element Should Be Visible    ${end-date-ok}
    Click Element    ${end-date-ok}
    Sleep    3s
    
Flight Radio Button
    Click Element    ${flight-button}
    Sleep    3s

Book Confirm Button
    Wait Until Element Is Visible    ${book-confirm-button}
    Click Element    ${book-confirm-button}
    Sleep    3s
    
Flight Price Button
    Click Element    ${flight-price-button}
    Sleep    3s

Price Confirm Button
    Click Element    ${price-confirm-button}
    Sleep    3s

Book Successfull Confirmation
    Page Should Contain Element    ${book-confirmation}
    Sleep    3s
    
Click Book Button Without Login
    Click Element    ${book-button-no-login}

