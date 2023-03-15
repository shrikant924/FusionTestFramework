*** Settings ***
Resource        ../../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Library         ../../../../FusionTestFramework/src/WebApplicationTestLibrary/
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
wait until QR code generated and validate QR code link details and log to console
    WebApplicationTestLibrary.Wait Until Page Contains    Study cannot be conducted here
    WebApplicationTestLibrary.Element Should Be Visible    ${QR_Code}
    ${captured_img} =    WebApplicationTestLibrary.Capture Element Screenshot    ${QR_Code}
    ${QRCodedata} =    WebApplicationTestLibrary.Scan QR Code    ${captured_img}
    Log To Console    ${QRCodedata}
