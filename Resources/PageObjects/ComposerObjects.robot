*** Settings ***
Documentation    Composer Objects
Library    SeleniumLibrary

*** Variables ***
${NEW_MESSAGE_BUTTON} =  css=[data-testid='sidebar:compose']
${RECIPIENT_FIELD} =  css=[data-testid='composer:to']
${SUBJECT_FIELD} =  css=[data-testid='composer:subject']
${COMPOSER_BODY} =  css=[data-testid='squire-iframe']
${SEND_BUTTON} =  css=[data-testid='composer:send-button']
${CC_BCC_BUTTON} =  xpath=//*[contains(text(),'CC BCC')]
${INPUT_CC} =  css=[data-testid='composer:to-cc']
${INPUT_BCC} =  css=[data-testid='composer:to-bcc']
${COMPOSER_MORE_OPTIONS} =  xpath=/html/body/div[1]/div[4]/div/div/div/footer/div/div[2]/div[1]/button[3]
${COMPOSER_ATTACH_PK} =  xpath=//*[contains(text(),'Attach Public Key')]


*** Keywords ***
New message
    click button    ${NEW_MESSAGE_BUTTON}

Add Recipient
    input text    ${RECIPIENT_FIELD}  ${RECIPIENT}

Add Subject
    input text    ${SUBJECT_FIELD}  ${SUBJECT}

Add Body
    click element    ${COMPOSER_BODY}
    press keys    none  This is automated email message

Send Message button
    sleep  2s
    click button    ${SEND_BUTTON}
    wait until page contains    Message sent.

Add CC;BCC button
    click button    ${CC_BCC_BUTTON}
    sleep  1s
    input text    ${INPUT_CC}  ${CC}
    input text    ${INPUT_BCC}  ${BCC}

Attach Public key button
    click button    ${COMPOSER_MORE_OPTIONS}
    click element    ${COMPOSER_ATTACH_PK}
