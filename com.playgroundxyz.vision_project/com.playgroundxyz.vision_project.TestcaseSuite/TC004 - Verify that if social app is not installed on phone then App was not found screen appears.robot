*** Settings ***
Resource            ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource

Suite Setup         Setup before suit start
Suite Teardown      tearDown
Test Setup          Launch Test application
Test Teardown       close Test application


*** Test Cases ***
Verify that if social app is not installed on phone then App was not found screen appears
    [Documentation]    Verification that if social app is not installed on phone then App was not found screen appears
    [Tags]    smoke

    paste the study link in the Textfield
    verify link is pasted in textbox
    Verify that user can start study by hitting Get Started button
    tap on 'BEGIN' button
    read 'privacy Notice'
    accept 'privacy Notice'
    Verify help icon is working as excepted
    Allow camera access
    Verify help icon is working as excepted
    Allow Screen recording
    Read and accept set up your eye tracking tips
    Need to Manual Input here 'Look at the dot until it goes green and disappears'
    verify 'Well done! The eye tracking setup is complete' screen getting displayed after validation of EYE gaze
    Verify 'You are ready to begin the study' screen getting displayed
    Tap on 'View A Quick Demo' Button
    Verify study instructions and tap on 'START STUDY' button
