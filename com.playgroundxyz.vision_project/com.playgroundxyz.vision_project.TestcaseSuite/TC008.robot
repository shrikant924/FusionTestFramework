*** Settings ***
Library     ../../src/MobileTestLibrary/
Resource    ../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource
Variables    ../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Test Cases ***
Testcase001
    Dialogs.Execute Manual Step    Do you have completed Eye gaze Callibration    Failed to calibrate
    