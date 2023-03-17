*** Settings ***
Resource        ../com.playgroundxyz.vision_project.PageObject.locators/Locators.resource
Library         ../../../src/MobileTestLibrary/
Library         ../../../src/WebApplicationTestLibrary/
Variables       ../../com.playgroundxyz.vision_project.ConfigFiles/configuration.py


*** Keywords ***
launch camera app and wait until user scan the QR code from study link url
    MobileTestLibrary.Start Activity    com.google.android.GoogleCamera    com.android.camera.CameraLauncher
    WebApplicationTestLibrary.Open Browser
    ...    ${url}
    ...    ${Browser}
    ...    Chrome
    ...    executable_path= D:\Robocrop_Fusion\drivers\chromedriver.exe
    WebApplicationTestLibrary.Maximize Browser Window

tap on generated link
    MobileTestLibrary.Wait Until Element Is Visible    ${camera_smartchip_text}    timeout= 300
    MobileTestLibrary.Click Element    ${camera_smartchip_text}
    WebApplicationTestLibrary.Close Browser
    MobileTestLibrary.Wait Until Element Is Visible    ${google_playstore_Button}    timeout=30
    ${SlicedStudyLink} =    MobileTestLibrary.Get Text From Index    ${url}    42    78
    Set global Variable    ${SlicedStudyLink}
    log to console    ${SlicedStudyLink}

Verify that user can start study by hitting Get Started button
    MobileTestLibrary.Wait Until Page Contains Element    ${GET STARTED}
    MobileTestLibrary.Click Element    ${GET STARTED}
    MobileTestLibrary.Wait Until Page Contains Element    ${About the study}
    MobileTestLibrary.Wait Until Page Contains Element    ${BEGIN Button}

tap on 'google play store' button
    MobileTestLibrary.Wait Until Element Is Visible    ${google_playstore_Button}    timeout=30
    MobileTestLibrary.Click Element    ${google_playstore_Button}

verify user is landed on 'google playstore' on vision app page
    MobileTestLibrary.Wait Until Page Contains    Google Play
    MobileTestLibrary.Page Should Contain Text    Vision Project
    MobileTestLibrary.Go Back

Verify if Need Help? page opens up after tapping Need Help? link from landing page
    MobileTestLibrary.Wait Until Page Contains    Need Help
    MobileTestLibrary.Click Element    ${Need_Help}

Verify if "Contact Us", "How to check Android version" , "Privacy Policy" and "Terms of User Agreement" option are provided on Need help page
    MobileTestLibrary.Wait Until Page Contains    Contact us
    MobileTestLibrary.Page Should Contain Text    Contact us
    MobileTestLibrary.Page Should Contain Text    How to check Android version
    MobileTestLibrary.Page Should Contain Text    Privacy policy
    MobileTestLibrary.Page Should Contain Text    Terms of Use Agreement

tap on 'Contact us' and verify user is landing on contact us page
    MobileTestLibrary.Wait Until Element Is Visible    ${contact us}
    MobileTestLibrary.Click Element    ${contact us}
    MobileTestLibrary.Wait Until Page Contains    Contact us
    MobileTestLibrary.Page Should Contain Text
    ...    If you need help or have any questions or feedback, please send an email to the following address. We will get back to you within 1 business day.
    MobileTestLibrary.Page Should Contain Text    support@vision-project.co
    MobileTestLibrary.Click Element    ${Go Back Button}

tap on 'How to check Android version' and verify user is landing on 'How to check Android version' page
    MobileTestLibrary.Wait Until Element Is Visible    ${How to check Android version}
    MobileTestLibrary.Click Element    ${How to check Android version}
    MobileTestLibrary.Page Should Contain Text    How to check Android version
    MobileTestLibrary.Page Should Contain Element    ${Go Back Button}
    MobileTestLibrary.Click Element    ${Go Back Button}

tap on 'Privacy policy' and verify user is landing on Privacy policy page
    MobileTestLibrary.Wait Until Element Is Visible    ${Privacy policy}
    MobileTestLibrary.Click Element    ${Privacy policy}
    TRY
        Run Keyword And Continue On Failure    MobileTestLibrary.Wait Until Element Is Visible    ${accept cookies}
        Run Keyword And Continue On Failure    MobileTestLibrary.Click Element    ${accept cookies}
    EXCEPT
        Log To Console    cookies already accepted by the user
    END
    MobileTestLibrary.Page Should Contain Text    Privacy Policy
    MobileTestLibrary.Click Element    ${Read Privacy Policy Btn}
    MobileTestLibrary.Wait Until Page Contains
    ...    In this Privacy Policy, 'us' 'we' or 'our' means PLAYGROUND XYZ HOLDINGS
    MobileTestLibrary.Page Should Contain Text
    ...    In this Privacy Policy, 'us' 'we' or 'our' means PLAYGROUND XYZ HOLDINGS PTY LTD (ABN 76 607 526 027) and our related bodies PLAYGROUND XYZ AUSTRALIA PTY LTD (ABN 42 607 532 365), PLAYGROUND XYZ IP PTY LTD (ABN 66 607 532 025), PLAYGROUND XYZ EMEA LTD (UK Company No. 10802474), PLAYGROUND XYZ ASIA PTE. LTD. (SG Registration No. 201809380E) and PLAYGROUND XYZ NORTH AMERICA CORP (EIN 36-4922580). We are committed to respecting your privacy.
    MobileTestLibrary.Scroll To Element By Exact Text    Read Privacy Policy for California Residents
    MobileTestLibrary.Click Element    ${Read Privacy Policy for California Residents Btn}
    MobileTestLibrary.Wait Until Page Contains
    ...    Playground XYZ Holdings Pty. Ltd., Playground XYZ Australia Pty. Ltd.
    ...    timeout=15
    MobileTestLibrary.Page Should Contain Text
    ...    Playground XYZ Holdings Pty. Ltd., Playground XYZ Australia Pty. Ltd., Playground XYZ IP Pty. Ltd., Playground XYZ EMEA Ltd., Playground XYZ Asia Pte. Ltd. and Playground XYZ North America Corp. and their affiliates (collectively,“[COMPANY],” “we,” “us,” or “our”) adopts this Privacy Statement to comply with the California Consumer Privacy Act of 2018 (“CCPA”) and other California privacy laws. This Privacy Statement applies solely to visitors, users, and others who reside in the State of California (“consumers,” “you,” or “your”).
    ...    This Privacy Statement explains our privacy practices and your rights regarding the collection, use, and disclosure of your personal information.
    MobileTestLibrary.Go Back
    MobileTestLibrary.Go Back
    MobileTestLibrary.Go Back

tap on 'Terms of Use Agreement' and verify user is landing on Terms of Use Agreement page
    MobileTestLibrary.Wait Until Element Is Visible    ${Terms of Use Agreement}    timeout=10
    MobileTestLibrary.Click Element    ${Terms of Use Agreement}
    MobileTestLibrary.Wait Until Page Contains    Vision Project Terms of Use Agreement
    MobileTestLibrary.Scroll To Element By Exact Text    19. Electronic Signatures
    MobileTestLibrary.Page Should Contain Text    19. Electronic Signatures
    MobileTestLibrary.Go Back

tap on 'OPEN STUDY IN APP' button
    MobileTestLibrary.Wait Until Element Is Visible    ${Open Study In app}
    MobileTestLibrary.Click Element    ${Open Study In app}

verify link is pasted in textbox
    MobileTestLibrary.Wait Until Element Is Visible    ${Study link textbox}
    ${pastedlink} =    MobileTestLibrary.Get Text    ${Study link textbox}
    Should Be Equal As Strings    ${SlicedStudyLink}    ${pastedlink}
