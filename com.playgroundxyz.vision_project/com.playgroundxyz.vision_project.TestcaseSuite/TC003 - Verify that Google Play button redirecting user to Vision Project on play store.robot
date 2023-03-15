*** Settings ***
Resource            ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource

Suite Setup         Setup before suit start
Suite Teardown      tearDown
Test Setup          Launch Test application
Test Teardown       close Test application


*** Test Cases ***
Verify that Google Play button redirecting user to Vision Project on play store
    [Documentation]    Verification that Google Play button redirecting user to Vision Project on play store
    [Tags]    regression

    launch camera app and wait until user scan the QR code from study link url
    tap on generated link
    tap on 'google play store' button
    verify user is landed on 'google playstore' on vision app page
    Verify if Need Help? page opens up after tapping Need Help? link from landing page
    Verify if "Contact Us", "How to check Android version" , "Privacy Policy" and "Terms of User Agreement" option are provided on Need help page
    tap on 'Contact us' and verify user is landing on contact us page
    tap on 'How to check Android version' and verify user is landing on 'How to check Android version' page
    tap on 'Terms of Use Agreement' and verify user is landing on Terms of Use Agreement page
