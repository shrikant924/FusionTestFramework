*** Settings ***
Library         Dialogs

*** Test Cases ***
Testcase001
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
