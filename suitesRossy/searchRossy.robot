*** Settings ***
Resource            ../pageObjectRossy/searchTaskRossy.robot

*** Variables ***
${username}            support@ngendigital.com
${password}            abc123
${valid-bookingId}     DA935


*** Test Cases ***
Search Valid Booking ID
    Open Flight Application
    Click Sign In button on Homepage
    Input Valid Username                            ${username}
    Input Valid Password                            ${password}
    Click Sign In button on Login Page
    Click Button Search
    Search Booking ID                               ${valid-bookingId}                    
    Click Button Search bookingId
    Check bookingId is Valid
    Close Flight Application
