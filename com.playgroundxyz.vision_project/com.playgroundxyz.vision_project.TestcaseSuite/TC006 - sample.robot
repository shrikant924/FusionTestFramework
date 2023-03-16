*** Settings ***
Library    ../../../FusionTestFramework/src/DBTestExtendedLibrary.py
Library    ../../../FusionTestFramework/src/APITestExtendedLibrary.py


*** Test Cases ***
Testcase001 
  @{get} =    APITestExtendedLibrary.GET     https://www.google.com/        json

     FOR    ${element}    IN    @{get}
         Log To Console  ${element}     
     END


