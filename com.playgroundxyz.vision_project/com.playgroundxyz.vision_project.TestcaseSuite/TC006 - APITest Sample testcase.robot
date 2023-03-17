*** Settings ***
Library    ../../../FusionTestFramework/src/DBTestExtendedLibrary.py
Library    ../../../FusionTestFramework/src/APITestExtendedLibrary.py


*** Test Cases ***
Testcase001 
    
  APITestExtendedLibrary.Create Session    api    https://jsonplaceholder.typicode.com	
  ${response} =    APITestExtendedLibrary.GET On Session     api    /users	
  Log To Console    ${response.content}    

    


