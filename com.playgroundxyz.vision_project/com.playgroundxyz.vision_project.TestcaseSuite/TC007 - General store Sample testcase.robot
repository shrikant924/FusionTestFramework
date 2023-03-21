*** Settings ***
Library     ../../src/MobileTestLibrary/
Resource    ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource


*** Test Cases ***
Testcase001
    MobileTestLibrary.Start Appium Service
    Launch Test application
    MobileTestLibrary.Wait Until Page Contains Element    com.androidsample.generalstore:id/spinnerCountry
    # MobileTestLibrary.Click Element    com.androidsample.generalstore:id/spinnerCountry
    # MobileTestLibrary.Scroll To Element By Exact Text In LongView    Yemen    50
    # MobileTestLibrary.click Text    Yemen
    ${SlicedStudyLink} =    MobileTestLibrary.Get Text From Index    ${url}    42    78
    MobileTestLibrary.Set Given Text ClipBoard    ${SlicedStudyLink}
    ${cl} =    MobileTestLibrary.GetText From Clipboard
    Log To Console    ${cl}
    # MobileTestLibrary.set Given Text clipBoard    shrikant lohar
    # ${Input} =    MobileTestLibrary.getText From Clipboard
    # log to console    ${Input}
    MobileTestLibrary.Input Text    com.androidsample.generalstore:id/nameField    ${cl}
    MobileTestLibrary.Click Element    com.androidsample.generalstore:id/radioFemale
    &{shopBtn} =    MobileTestLibrary.Get element location    com.androidsample.generalstore:id/btnLetsShop
    Log to console    ${shopBtn}
    ${x} =    Evaluate     ${shopBtn}[x]+50
    Log to console    ${x}
    MobileTestLibrary.Click Element At Coordinates    ${x}    ${shopBtn}[y]
    MobileTestLibrary.Wait Until Page Contains    Products
    MobileTestLibrary.Page Should Contain Text    Products
    MobileTestLibrary.Stop Appium Service
