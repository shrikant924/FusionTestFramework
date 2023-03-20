*** Settings ***
Library         ../../../src/MobileTestLibrary/
Library         ../../../src/WebApplicationTestLibrary/
Resource        ../com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
Verify help icon is working as excepted
    MobileTestLibrary.Wait Until Element Is Visible    ${Help icon}
    MobileTestLibrary.Click Element    ${Help icon}
    MobileTestLibrary.Wait Until Page Contains Element    ${Native vision app Need help?}
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}

Allow camera access
    TRY
        MobileTestLibrary.Wait Until Element Is Visible    ${ALLOW CAMERA ACCESS}
        MobileTestLibrary.Click Element    ${ALLOW CAMERA ACCESS}

        TRY
            MobileTestLibrary.Wait Until Element Is Visible    ${Allow While using the app}
            MobileTestLibrary.Click Element    ${Allow onlyThisTime}
            MobileTestLibrary.Wait Until Page Contains    Screen recording
        EXCEPT
            Log To Console    allowed camera permission
        END
    EXCEPT
        MobileTestLibrary.Wait Until Page Contains    You have previously allowed our app usage access.
        MobileTestLibrary.Click Element    ${continueBtn}
        MobileTestLibrary.Wait Until Page Contains    Screen recording
    END

Allow Screen recording
    TRY
        MobileTestLibrary.Wait Until Page Contains
        ...    Ensure sensitive information such as passwords, messages or payment details are not visible when recording is on.
        MobileTestLibrary.Wait Until Element Is Visible    ${ALLOW ScreenRecording}
        MobileTestLibrary.Click Element    ${ALLOW ScreenRecording}
        MobileTestLibrary.Wait Until Page Contains    Start recording or casting with Vision Project?
        &{startNowBtnLocation} =     MobileTestLibrary.Get element location        ${startNowBtn}
        MobileTestLibrary.Click Element At Coordinates    ${startNowBtnLocation}[x]    ${startNowBtnLocation}[y]
        MobileTestLibrary.Wait Until Page Contains    You have previously allowed our app usage access.
        Verify help icon is working as excepted
        MobileTestLibrary.Click Element    ${continueBtn}
        MobileTestLibrary.Wait Until Page Contains    You have previously allowed our app to appear on top.
        Verify help icon is working as excepted
        MobileTestLibrary.Click Element    ${continueBtn}
    EXCEPT
        MobileTestLibrary.Wait Until Page Contains    You have previously allowed our app usage access.
        Verify help icon is working as excepted
        MobileTestLibrary.Click Element    ${continueBtn}
        MobileTestLibrary.Wait Until Page Contains    You have previously allowed our app to appear on top.
        Verify help icon is working as excepted
        MobileTestLibrary.Click Element    ${continueBtn}
    END
