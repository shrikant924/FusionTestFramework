*** Settings ***
Resource            ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource

Suite Setup         Setup before suit start
Suite Teardown      tearDown
Test Setup          Launch Test application
Test Teardown       close Test application


*** Test Cases ***
Tap on 'Privacy policy' and verify user is landing on Privacy policy page
    [Documentation]    Verification that Google Play button redirecting user to Vision Project on play store
    [Tags]    regression

    launch camera app and wait until user scan the QR code from study link url
    tap on generated link
    tap on 'google play store' button
    verify user is landed on 'google playstore' on vision app page
    Verify if Need Help? page opens up after tapping Need Help? link from landing page
    tap on 'Privacy policy' and verify user is landing on Privacy policy page
