*** Settings ***
Library         ../../../src/MobileTestLibrary/
Library         ../../../src/WebApplicationTestLibrary/
Resource        ../com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
Setup before suit start
    MobileTestLibrary.Start Appium Service
    Set Log Level    DEBUG

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
    Run Keyword And Continue On Failure    Close Application
    Run Keyword And Continue On Failure    WebApplicationTestLibrary.Close Browser
    Run Keyword And Continue On Failure    WebApplicationTestLibrary.Close All Browsers
    Run Keyword And Continue On Failure    Close All Applications
