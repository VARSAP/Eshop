*** Settings ***
Library    String  
Library    OperatingSystem    

*** Test Cases ***
Test1
    :FOR    ${INDEX}    IN RANGE    100   0    -1
     \   ${s1}=     Evaluate    ${INDEX}%3    
     \    Run Keyword If      ${s1}==0        Log    SOFTWARE     
     \    ${s2}=    Evaluate    ${INDEX}%5 
     \    Run Keyword If    ${s2}==0        Log    AGILE     
     \    ${s3}=    Evaluate    ${INDEX}%15             
     \    Run Keyword If    ${s3}==0        Log    TESTING 
     

        
     
      
   
    
     
            
     