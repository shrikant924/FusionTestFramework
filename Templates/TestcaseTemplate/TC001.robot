*** Settings ***

Resource       ../../com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource
Suite Setup
Suite Teardown
Task Setup
Test Teardown


*** Test Cases ***
Verify that Deep link URL is providing QR code      #testcase title
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression

    #keywords



