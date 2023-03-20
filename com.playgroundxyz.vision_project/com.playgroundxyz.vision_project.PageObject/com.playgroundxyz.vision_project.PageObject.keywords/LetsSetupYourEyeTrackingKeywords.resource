*** Settings ***
Library         ../../../src/MobileTestLibrary/
Resource        Allow Permission page keywords.resource
Resource        ../com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
Read and accept set up your eye tracking tips
    MobileTestLibrary.Wait Until Page Contains Element    ${LetsSetupYourEyeTrackingPage title}
    Verify help icon is working as excepted
    MobileTestLibrary.Wait Until Page Contains Element    ${LetsSetupYourEyeTrackingPage title}
    MobileTestLibrary.Click Element    ${LetsSetupYourEyeTrackingPage checkBox1}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox1}
    MobileTestLibrary.Click Element    ${LetsSetupYourEyeTrackingPage checkBox2}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox2}
    MobileTestLibrary.Click Element    ${LetsSetupYourEyeTrackingPage checkBox3}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox3}
    MobileTestLibrary.Click Element    ${LetsSetupYourEyeTrackingPage checkBox4}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage checkBox4}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${LetsSetupYourEyeTrackingPage SetupBtn}
    MobileTestLibrary.Click Element    ${LetsSetupYourEyeTrackingPage SetupBtn}
    MobileTestLibrary.Wait Until Page Contains    Look at the dot until it goes green and disappears
