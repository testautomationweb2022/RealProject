*** Settings ***
Resource   D:/TestAutomation/Robot/RealProject/Resources/PageObjects/ComposerObjects.robot

*** Keywords ***
Verify composer is opened
    ComposerObjects.New message
    page should contain    Sent with ProtonMail Secure Email.

Compose new message
    ComposerObjects.New message
    ComposerObjects.Add Recipient
    ComposerObjects.Add Subject
    ComposerObjects.Add Body

Add CC;BCC
   ComposerObjects.Add CC;BCC button


Send Message
    ComposerObjects.Send Message button

Attach Public key
    ComposerObjects.Attach Public key button
