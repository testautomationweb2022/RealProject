*** Settings ***
Resource   D:/TestAutomation/Robot/RealProject/Resources/PageObjects/SettingsObjects.robot

*** Keywords ***
Enable Public Key from settings
    SettingsObjects.Attach PK from settings

Disable Public Key from settings
    SettingsObjects.Detach PK from settings