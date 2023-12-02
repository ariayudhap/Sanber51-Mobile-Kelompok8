*** Settings ***
Resource        ../base/base.robot
Variables        book-locator.yaml

*** Keywords ***
Click Booking Button
    Click Element    ${book-button}
    Sleep    2s

Click From City button
    Click Element    ${from-city-button}
    Sleep    2s

From City Select
    Click Element    ${from-city-select}
    Sleep    2s

CLick To City Button
    Click Element    ${to-city-button}
    Sleep    2s

To City Select
    Click Element    ${to-city-select}
    Sleep    2s

Click Class Button
    Click Element    ${class-button}
    Sleep    2s

Class Select
    Click Element    ${class-select}
    Sleep    2s

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
    Sleep    3s

End Date Ok Button
    Click Element    ${end-date-ok}
    Sleep    3s

Flight Button
    Click Element    ${flight-button}
    Sleep    2s

Book Confirm Button 
    Click Element    ${book-confirm-button}
    Sleep    2s

Flight Price Button
    Click Element    ${flight-price-button}
    Sleep    2s

Price Confirm Button
    Click Element    ${price-confirm-button}
    Sleep    2s

Book Successfull Confirmation
    Page Should Contain Element    ${book-confirmation}
    Sleep    2s
    
Click Book Button Without Login
    Click Element    ${book-button-no-login}