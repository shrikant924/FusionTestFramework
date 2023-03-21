*** Settings ***
Resource            ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource

Suite Setup         Setup before suit start
Suite Teardown      tearDown
Test Setup          Launch Test application
Test Teardown       close Test application


*** Test Cases ***
Verify that user is able to paste study link using Paste study link
    [Documentation]    Verification that user is able to paste study link using Paste study link
    [Tags]    regression

    paste the study link in the Textfield
    verify link is pasted in textbox
    Verify that user can start study by hitting Get Started button

Verify that Help page open up when user taps on help icon"?"
    [Documentation]    Verification that Help page open up when user taps on help icon"?"
    [Tags]    regression

    Tap on 'help icon'
    Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    verify app version should be as excepted
    Verify on tapping on 'Contact us' and verify user is landing on contact us page
    Verify on tapping on 'Eye tracking tips' relevant page getting displayed
    Verify on tapping on 'Privacy' relevant page getting displayed
    Verify on tapping on 'Terms of Use Agreement' relevant page getting displayed
    Verify on tapping on 'How to check Android version' relevant page getting displayed
    Verify on tapping on 'How to recover completion code' relevant page getting displayed
