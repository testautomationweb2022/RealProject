*** Settings ***
Documentation    Login page objects
Library    SeleniumLibrary

*** Variables ***
${SIGN_IN_EMAIL} =  id=username
${SIGN_IN_PASSWORD} =  id=password
${LOGIN_BUTTON} =  xpath=/html/body/div[1]/div[3]/div/div/main/div[2]/form/button

*** Keywords ***
Load
    go to    ${URL}

Verify page loaded
    wait until page contains    to continue to ProtonMail

Sign in
    input text    ${SIGN_IN_EMAIL}  ${CREDENTIALS}[0]
    input password    ${SIGN_IN_PASSWORD}  ${CREDENTIALS}[1]
    click button    ${LOGIN_BUTTON}
    sleep    3s
    wait until page contains    New message

Sign in with wrong email
    input text    ${SIGN_IN_EMAIL}  ${WRONG_CREDENTIALS}[0]
    input password    ${SIGN_IN_PASSWORD}  ${WRONG_CREDENTIALS}[0]
    click button    ${LOGIN_BUTTON}
    wait until page contains    Incorrect login credentials. Please try again
