*** Settings ***
Resource   D:/TestAutomation/Robot/RealProject/Resources/PageObjects/LoginPageObjects.robot

*** Keywords ***
Login to ProtonMail with wrong credentials
    LoginPageObjects.Load
    LoginPageObjects.Verify page loaded
    LoginPageObjects.Sign in with wrong email

Login to ProtonMail
    LoginPageObjects.Load
    LoginPageObjects.Verify page loaded
    LoginPageObjects.Sign in

