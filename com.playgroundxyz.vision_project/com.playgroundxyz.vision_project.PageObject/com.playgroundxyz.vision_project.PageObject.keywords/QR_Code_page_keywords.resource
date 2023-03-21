*** Settings ***
Library         ../../../src/WebApplicationTestLibrary/
Resource        ../com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
wait until QR code generated and validate QR code link details and log to console
    WebApplicationTestLibrary.Wait Until Page Contains    Study cannot be conducted here
    WebApplicationTestLibrary.Element Should Be Visible    ${QR_Code}
    ${captured_img} =    WebApplicationTestLibrary.Capture Element Screenshot    ${QR_Code}
    ${QRCodedata} =    WebApplicationTestLibrary.Scan QR Code    ${captured_img}
    Log To Console    ${QRCodedata}    format=>50
    Should Be Equal    ${url}    ${QRCodedata}
