*** Settings ***
Library         ../../../src/MobileTestLibrary/
Library         Dialogs
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py
Resource        ../com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Resource        welcome page journey keywords.resource
Resource        Allow Permission page keywords.resource


*** Keywords ***
Need to Manual Input here 'Look at the dot until it goes green and disappears'
    MobileTestLibrary.Wait Until Page Contains    ${EyeGazeValiidation titleText}
    Execute Manual steps
    MobileTestLibrary.Wait Until Page Contains Element    ${EyeGazeValiidation BeginBtn}
    MobileTestLibrary.Page Should Contain Text    Repeat five times. The dots will appear in random places.
    MobileTestLibrary.Click element    ${EyeGazeValiidation BeginBtn}
    Execute Manual steps
    MobileTestLibrary.Wait Until Page Contains    Just a few more to go
    MobileTestLibrary.Page Should Contain Text
    ...    Great job so far! Keep going. The dots will go green and disappear once the accuracy is validated.
    MobileTestLibrary.Wait Until Element Is Visible    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}
    MobileTestLibrary.Click element    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}
    TRY
        Verify 'Accuracy needs to be improved' screen getting displayed if user fails to validate accuracy
    EXCEPT
        Log To Console    "Accuracy is good"
    END

Verify 'Accuracy needs to be improved' screen getting displayed if user fails to validate accuracy
    MobileTestLibrary.Wait Until Element Is Visible    ${tryAgainBtn}
    MobileTestLibrary.Page Should Contain Text    Try not to let your eyes wander during the accuracy check.
    MobileTestLibrary.Page Should Contain Text    Accuracy needs to be improved
    Verify help icon is working as excepted
    MobileTestLibrary.Wait Until Element Is Visible    ${AccuracyNeedsToBeImproved NeedHelpBtn}
    MobileTestLibrary.Click Element    ${AccuracyNeedsToBeImproved NeedHelpBtn}
    Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Wait Until Element Is Visible    ${AccuracyNeedsToBeImproved NeedHelpBtn}
    MobileTestLibrary.Swipe By Percent    80    50    20    50
    MobileTestLibrary.Wait Until Page Contains    Sit upright at a
    MobileTestLibrary.Page Should Contain Text    Sit upright at a desk or a table in a well-lit place.
    MobileTestLibrary.Swipe By Percent    80    50    20    50
    MobileTestLibrary.Wait Until Page Contains    Avoid windows and mirrors
    MobileTestLibrary.Page Should Contain Text    Avoid windows and mirrors (wearing your glasses is fine).
    MobileTestLibrary.Swipe By Percent    80    50    20    50
    MobileTestLibrary.Wait Until Page Contains    Keep your head
    MobileTestLibrary.Page Should Contain Text    Keep your head and phone still while looking at the dots.
    MobileTestLibrary.Click Element    ${tryAgainBtn}
    MobileTestLibrary.Wait Until Element Is Visible    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}
    MobileTestLibrary.Click element    ${EyeGazeValiidation ContinueToAccuracyCheckBtn}

verify 'Well done! The eye tracking setup is complete' screen getting displayed after validation of EYE gaze
    MobileTestLibrary.Wait Until Page Contains    You will have accuracy checks
    Verify help icon is working as excepted
    MobileTestLibrary.Page Should Contain Text
    ...    You will have accuracy checks every 1 minutes during your browsing session to maintain the accuracy of our eye tracking.
    MobileTestLibrary.Click element    ${BEGIN Button}

Verify 'You are ready to begin the study' screen getting displayed
    MobileTestLibrary.Wait Until Page Contains    You are ready to begin the study    timeout=300
    MobileTestLibrary.Page Should Contain Text
    ...    Your mission is to browse the content of the Facebook app on your phone until 5 minutes elapse.
    MobileTestLibrary.Page Should Contain Text    Browse the FEED, REELS or STORIES content in portrait mode only
    MobileTestLibrary.Page Should Contain Text
    ...    Please keep the Vision Project app open in the background while you browse.
    MobileTestLibrary.Page Should Contain Text    The Vision Project app will record your screen while you browse.
    Verify help icon is working as excepted

Tap on 'View A Quick Demo' Button
    MobileTestLibrary.Wait Until Element Is Visible    ${ViewAQuickDemoBtn}
    MobileTestLibrary.Click element    ${ViewAQuickDemoBtn}

Tap on 'Skip And Start Study' Button
    MobileTestLibrary.Wait Until Element Is Visible    ${Skip&StartTheStudyBtn}
    MobileTestLibrary.Click element    ${Skip&StartTheStudyBtn}

Verify study instructions and tap on 'START STUDY' button
    MobileTestLibrary.Wait Until Page Contains    Study instructions
    Verify help icon is working as excepted
    MobileTestLibrary.Page Should Contain Text
    ...    You will see a floating timer with the time remaining and the status of the recording in the top right corner of the screen.
    MobileTestLibrary.Swipe By Percent    80    50    20    50
    MobileTestLibrary.Wait Until Page Contains    When it is time
    MobileTestLibrary.Page Should Contain Text
    ...    When it is time to return to the Vision Project app for an eye tracking accuracy check, the notification will pop up. Please act according to the instructions in the notification. The study will be paused until the action is taken.
    MobileTestLibrary.Swipe By Percent    80    50    20    50
    MobileTestLibrary.Wait Until Page Contains    When the browsing
    MobileTestLibrary.Page Should Contain Text
    ...    When the browsing session is complete you will see a notification like this. Please act according to the instructions in the notification.
    MobileTestLibrary.Click element    ${studyInstructions StartStudyBtn}

Execute Manual steps
    ${result1}=    Dialogs.Get Value From User    Has your eye gaze calibration been completed? Input:Pass/Fail
    WHILE    $True
        ${result}=    Evaluate    "${result1}".lower()
        IF    '${result}' == 'pass'
            Pass Execution    That's awesome! The callibration has been completed
            BREAK
        ELSE IF    '${result}' == 'fail'
            Fail    Testcase failed ! Please try again if you failed to calibrate
            BREAK
        ELSE
            ${result1}=    Dialogs.Get Value From User    The choice you made was invalid, please input Pass/Fail
        END
    END
