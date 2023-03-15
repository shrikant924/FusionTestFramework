*** Settings ***
Resource        ../../com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Library         ../../../../FusionTestFramework/src/MobileTestLibrary/
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py

*** Keywords ***
Tap on 'help icon'
    MobileTestLibrary.Start Activity    com.playgroundxyz.vision_project    .MainActivity
    MobileTestLibrary.Wait Until Element Is Visible    ${Help icon}
    MobileTestLibrary.Click Element    ${Help icon}

Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    MobileTestLibrary.Wait Until Element Is Visible    ${Native vision app Need help?}
    MobileTestLibrary.Page Should Contain Element    ${Native vision Contact us}
    MobileTestLibrary.Page Should Contain Element    ${Native vision Eye tracking tips}
    MobileTestLibrary.Page Should Contain Element    ${Native vision Privacy}
    MobileTestLibrary.Page Should Contain Element    ${Native vision Terms of Use Agreement}
    MobileTestLibrary.Page Should Contain Element    ${Native vision How to check Android version}
    MobileTestLibrary.Page Should Contain Element    ${Native vision How to recover completion code}

verify app version should be as excepted
    ${APP_VERSION} =    MobileTestLibrary.Get Text    ${Native vision App version}
    Should Be Equal As Strings    ${APP_VERSION}    ${currentAppVersion}

Verify on tapping on 'Contact us' and verify user is landing on contact us page
    MobileTestLibrary.Wait Until Page Contains    ${Native vision Contact us}
    MobileTestLibrary.Click Element    ${Native vision Contact us}
    MobileTestLibrary.Wait Until Page Contains    Contact us
    MobileTestLibrary.Page Should Contain Text
    ...    If you need help or have any questions or feedback, please send an email to the following address. We will get back to you within 1 business day.
    MobileTestLibrary.Page Should Contain Text    support@vision-project.co
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'Eye tracking tips' relevant page getting displayed
    MobileTestLibrary.Wait Until Page Contains Element    ${Native vision app Need help?}
    MobileTestLibrary.Wait Until Page Contains Element    ${Native vision Eye tracking tips}
    MobileTestLibrary.Click Element    ${Native vision Eye tracking tips}
    MobileTestLibrary.Page Should Contain Text    Eye tracking tips
    MobileTestLibrary.Page Should Contain Text
    ...    Keep your head and phone still while looking at the dots during the eye tracking setup.
    MobileTestLibrary.Page Should Contain Text    Sit upright at a desk or a table in a well-lit place.
    MobileTestLibrary.Page Should Contain Text    Avoid windows and mirrors (wearing your glasses is fine).
    MobileTestLibrary.Page Should Contain Text    Make sure your phone’s battery is above 50%.
    MobileTestLibrary.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'Privacy' relevant page getting displayed
    MobileTestLibrary.Wait Until Element Is Visible    ${Native vision Privacy}
    MobileTestLibrary.Click Element    ${Native vision Privacy}
    MobileTestLibrary.Wait Until Element Is Visible    ${policy page Privacy policy Btn}
    MobileTestLibrary.Page Should Contain Text    Privacy
    MobileTestLibrary.Page Should Contain Text    Your data rights
    MobileTestLibrary.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Click Element    ${policy page Privacy policy Btn}
    MobileTestLibrary.Go Back
    MobileTestLibrary.Wait Until Element Is Visible    ${policy page Your data rights Btn}
    MobileTestLibrary.Click Element    ${policy page Your data rights Btn}
    Page Should Contain Text    Your data rights
    Page Should Contain Text
    ...    If you would like to delete your data, please send an email with the study link to the following address.
    Page Should Contain Text    privacy@playgroundxyz.com
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Wait Until Page Contains    Privacy
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'Terms of Use Agreement' relevant page getting displayed
    MobileTestLibrary.Wait Until Page Contains Element    ${Native vision Terms of Use Agreement}
    MobileTestLibrary.Click Element    ${Native vision Terms of Use Agreement}
    MobileTestLibrary.Wait Until Page Contains    Vision Project Terms of Use
    MobileTestLibrary.Scroll To Element By Exact Text    19. Electronic Signatures
    MobileTestLibrary.Page Should Contain Text    19. Electronic Signatures
    MobileTestLibrary.Go Back

Verify on tapping on 'How to check Android version' relevant page getting displayed
    MobileTestLibrary.Wait Until Page Contains Element    ${Native vision How to check Android version}
    MobileTestLibrary.Click Element    ${Native vision How to check Android version}
    MobileTestLibrary.Page Should Contain Text    How to check Android version
    MobileTestLibrary.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}

Verify on tapping on 'How to recover completion code' relevant page getting displayed
    MobileTestLibrary.Wait Until Page Contains Element    ${Native vision How to recover completion code}
    MobileTestLibrary.Click Element    ${Native vision How to recover completion code}
    MobileTestLibrary.Page Should Contain Text    Recover completion code
    MobileTestLibrary.Page Should Contain Text
    ...    Please send an email with the study link to the following address and we will get back to you with completion code.
    MobileTestLibrary.Page Should Contain Text    support@vision-project.co
    MobileTestLibrary.Page Should Contain Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Wait Until Page Contains    ${Native vision app Need help?}
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}

tap on 'BEGIN' button
    MobileTestLibrary.Wait Until Page Contains Element    ${BEGIN Button}
    MobileTestLibrary.Wait Until Element Is Visible    ${Help icon}
    MobileTestLibrary.Click Element    ${Help icon}
    Verify help page getting displayed to the user with 'contact us' , 'Eye tracking tips' , 'privacy' ...
    MobileTestLibrary.Click Element    ${Native vision Need HelpPage Go Back Btn}
    MobileTestLibrary.Wait Until Page Contains Element    ${BEGIN Button}
    MobileTestLibrary.Click Element    ${BEGIN Button}

read 'privacy Notice'
    MobileTestLibrary.Wait Until Page Contains    Privacy Notice
    MobileTestLibrary.Scroll To Element By Exact Text In LongView    www.playground.xyz/privacy/    30

accept 'privacy Notice'
    MobileTestLibrary.Wait Until Element Is Visible    ${PrivacyNoticeCheckbox}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${PrivacyNoticeCheckbox}
    MobileTestLibrary.Tap    ${PrivacyNoticeCheckbox}
    MobileTestLibrary.Wait Until Element Is Visible    ${TermsOfUseCheckbox}
#    MobileTestLibrary.Tap    ${TermsOfUseCheckbox}
    MobileTestLibrary.Click Element At Coordinates    112    1459
    MobileTestLibrary.Wait Until Element Is Visible    ${acceptBtn}
    MobileTestLibrary.Wait Until Element Gets Enabled    ${acceptBtn}
    MobileTestLibrary.Click Element    ${acceptBtn}
    MobileTestLibrary.Wait Until Page Contains    Track your gaze

decline 'privacy Notice'
    MobileTestLibrary.Wait Until Element Is Visible    ${Decline}
    MobileTestLibrary.Click Element    ${Decline}
    MobileTestLibrary.Wait Until Page Contains    Study stopped
