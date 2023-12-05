*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}                http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}             android
${PLATFORM_VERSION}          9.0
${DEVICE_NAME}               emulator-5554
${APP_PACKAGE}               com.example.myapplication
${APP_ACTIVITY}              com.example.myapplication.MainActivity
${valid-username}            support@ngendigital.com
${valid-password}            abc123
${invalid-username}          invalid
${invalid-password}          invalid
${flight-number}             DA935



*** Keywords ***
Open Flight Application
    Open Application    remote_url=${REMOTE_URL}
    ...                 platformName=${PLATFORM_NAME}
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Application 