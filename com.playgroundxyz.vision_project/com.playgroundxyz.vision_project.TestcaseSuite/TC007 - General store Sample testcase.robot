*** Settings ***
Library     MobileTestLibrary
Resource    ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource


*** Test Cases ***
Testcase001
    MobileTestLibrary.Start Appium Service
    Launch Test application
    MobileTestLibrary.Wait Until Page Contains Element    com.androidsample.generalstore:id/spinnerCountry
    MobileTestLibrary.Click Element    com.androidsample.generalstore:id/spinnerCountry
    MobileTestLibrary.Scroll To Element By Exact Text In LongView    Yemen    50
    MobileTestLibrary.click Text    Yemen
    MobileTestLibrary.Input Text    com.androidsample.generalstore:id/nameField    shrikant
    MobileTestLibrary.Click Element    com.androidsample.generalstore:id/radioFemale
    MobileTestLibrary.Click Element    com.androidsample.generalstore:id/btnLetsShop
    MobileTestLibrary.Wait Until Page Contains    Products
    MobileTestLibrary.Page Should Contain Text    Products
    MobileTestLibrary.Stop Appium Service