*** Settings ***
Documentation    Common objects
Library    SeleniumLibrary

*** Keywords ***
Begin web test
    open browser    about:blank  ${BROWSER}
    maximize browser window
    set browser implicit wait    10s

End web test
    close browser

Back to mailbox
    sleep    1s
    click element    xpath=//*[contains(text(),'Back to Mail')]

