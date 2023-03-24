*** Variables ***
#Native vision privacy page
${policy page Privacy policy Btn}        com.playgroundxyz.vision_project:id/privacy_policy_link
${policy page Your data rights Btn}        com.playgroundxyz.vision_project:id/data_link

#Native vision app Need help page locators
${Native vision app Need help?}         com.playgroundxyz.vision_project:id/title
${Native vision Contact us}         	com.playgroundxyz.vision_project:id/need_help_contact_link
${Native vision Eye tracking tips}      com.playgroundxyz.vision_project:id/need_help_tracking_link
${Native vision Privacy}         	com.playgroundxyz.vision_project:id/need_help_privacy_link
${Native vision Terms of Use Agreement}         com.playgroundxyz.vision_project:id/need_help_terms_link
${Native vision How to check Android version}        com.playgroundxyz.vision_project:id/need_help_version_link
${Native vision How to recover completion code}        com.playgroundxyz.vision_project:id/need_help_code_link
${Native vision App version}        	com.playgroundxyz.vision_project:id/app_version
${Native vision Need HelpPage Go Back Btn}        		com.playgroundxyz.vision_project:id/go_back_button

#Web vision privacy page locators
${accept cookies}      onetrust-accept-btn-handler
${Read Privacy Policy Btn}      //android.view.View[@content-desc="Read Privacy Policy"]/android.widget.TextView
${Read Privacy Policy for California Residents Btn}     //android.view.View[@content-desc="Read Privacy Policy for California Residents"]/android.widget.TextView

#WebAppVision Need Help page locators

${contact us}       //android.view.View[@content-desc="Contact us"]/android.widget.TextView
${How to check Android version}     	//android.view.View[@content-desc="How to check Android version"]/android.widget.TextView
${Privacy policy}       //android.view.View[@content-desc="Privacy policy"]/android.widget.TextView
${Terms of Use Agreement}      //android.view.View[@content-desc="Terms of Use Agreement"]//android.widget.TextView
${Go Back Button}       //android.widget.Button[@text='Go Back']