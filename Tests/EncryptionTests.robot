*** Settings ***
Documentation    Composer Test cases for ProtonMail
Resource    D:/TestAutomation/Robot/RealProject/Resources/Common.robot
Resource    D:/TestAutomation/Robot/RealProject/Resources/Composer.robot
Resource    D:/TestAutomation/Robot/RealProject/Resources/LoginPage.robot
Resource    D:/TestAutomation/Robot/RealProject/Resources/Settings.robot
Test Setup    Begin web test
Test Teardown    End web test

*** Variables ***
${BROWSER} =  edge
${START_URL} =  https://mail.protonmail.com
@{CREDENTIALS} =  panche_test9@protonmail.com  test1234
${RECIPIENT} =  panche_test2@protonmail.com
${SUBJECT} =  Automated Subject

*** Test Cases ***
TC0001 - Attach Public Key from settings
    [Documentation]    Public key should be attached from settings
    [Tags]    Smoke
    Login to ProtonMail
    Enable Public Key from settings
    Back to mailbox
    Compose new message
    Send Message
    Disable Public Key from settings