*** Settings ***
Resource        ../../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Library         ../../../../FusionTestFramework/src/MobileTestLibrary/
Library         ../../../../FusionTestFramework/src/WebApplicationTestLibrary/
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
Setup before suit start
    MobileTestLibrary.Start Appium Service
    Set Log Level    DEBUG
    Log To Console    Appium server started .....

tearDown
    MobileTestLibrary.Stop Appium Service

Launch browser and input url
    WebApplicationTestLibrary.Open Browser    ${url}    ${Browser}    executable_path=drivers/chromedriver.exe
    WebApplicationTestLibrary.Maximize Browser Window

Launch Test application
    MobileTestLibrary.Open Application    ${remote_url}    &{device}
    Set Log Level    DEBUG
    MobileTestLibrary.Set Appium Timeout    30

close Test application
    Run Keyword And Continue On Failure    MobileTestLibrary.Close Application
    Run Keyword And Continue On Failure    WebApplicationTestLibrary.Close Browser
    Run Keyword And Continue On Failure    WebApplicationTestLibrary.Close All Browsers
    Run Keyword And Continue On Failure    MobileTestLibrary.Close All Applications
