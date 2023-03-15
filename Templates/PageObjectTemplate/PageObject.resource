*** Settings ***
Resource       ../../com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource

*** Keywords ***
Open camera app
    Start Activity      com.android.camera2    com.android.camera.CameraLauncher

wait until user scan the QR code from study link url
    mobile.Wait Until Element Is Visible       ${camera_smartchip_text}      timeout= 300

tap on generated link
    mobile.Click Element     ${camera_smartchip_text}



