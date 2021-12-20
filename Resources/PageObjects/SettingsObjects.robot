*** Settings ***
Documentation    Settings objects
Library    SeleniumLibrary

*** Variables ***
${SETTINGS_MENU} =  xpath=/html/body/div[1]/div[3]/div[2]/header/div[2]/ul/li[4]/button
${GO_TO_SETTINGS} =  xpath=//*[contains(text(),'Go to settings')]
${ENCRYPTION_KEYS_SETTINGS} =  xpath=//*[contains(text(),'Encryption & keys')]
${ATTACH_PK_TOGGLE} =  xpath=//*[@id="pgp-settings"]/div/div[2]/div[2]/label/span[1]
${AUTO_SIGN_EXT_MESSAGES_NO} =  css=button[type='reset']

*** Keywords ***
Attach PK from settings
    click button    ${SETTINGS_MENU}
    click element    ${GO_TO_SETTINGS}
    sleep  1s
    click element    ${ENCRYPTION_KEYS_SETTINGS}
    click element    ${ATTACH_PK_TOGGLE}
    click button    ${AUTO_SIGN_EXT_MESSAGES_NO}

Detach PK from settings
    click button    ${SETTINGS_MENU}
    click element    ${GO_TO_SETTINGS}
    sleep  1s
    click element    ${ENCRYPTION_KEYS_SETTINGS}
    click element    ${ATTACH_PK_TOGGLE}

