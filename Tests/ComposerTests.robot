*** Settings ***
Documentation    Composer Test cases for ProtonMail
Resource    D:/TestAutomation/Robot/RealProject/Resources/Common.robot
Resource    D:/TestAutomation/Robot/RealProject/Resources/Composer.robot
Resource    D:/TestAutomation/Robot/RealProject/Resources/LoginPage.robot

Test Setup    Begin web test
Test Teardown    End web test

*** Variables ***
${BROWSER} =  edge
${URL} =  https://mail.protonmail.com
@{CREDENTIALS} =  panche_test9@protonmail.com  test1234
@{WRONG_CREDENTIALS} =  panche@isaev.com  test1234
${RECIPIENT} =  panche_test2@protonmail.com
${SUBJECT} =  Automated test subject
${CC} =  panche_test9@protonmail.com
${BCC} =  panche_test8@protonmail.com


*** Test Cases ***
TC0001 - Login to ProtonMail
    [Documentation]    User should be able to login
    [Tags]    Smoke
    Login to ProtonMail

TC0002 - Login with wrong credentials
    [Documentation]    Login with wrong credentials should not be possible
    [Tags]    Smoke
    Login to ProtonMail with wrong credentials

TC0003 - Verify composer is opened
    [Documentation]    Composer should be opened
    [Tags]    Smoke
    Login to ProtonMail
    Verify composer is opened

TC0004 - Verifty that user can send message
    [Documentation]    Message should be sent
    [Tags]    Smoke
    Login to ProtonMail
    Compose new message
    Send Message

TC0005 - Add CC;BCC and send message
    [Documentation]    Message should be sent with CC and BCC
    [Tags]    Smoke
    Login to ProtonMail
    Compose new message
    Add CC;BCC
    Send Message

TC0006 - Attach Public key from composer
    [Documentation]    Public key should be attached from composer
    [Tags]    Smoke
    Login to ProtonMail
    Compose new message
    Attach public key
    Send Message

TC0007 - Keyboard shortcut - Go to Spam
    [Documentation]    User should be able to navigate to Spam folder
    [Tags]    Smoke
    Login to ProtonMail
    press keys    none  gs
    page should contain    Spam


*** Keywords ***
