*** Settings ***
*** Variables ***
${https://demoqa.com/}
*** Test Cases ***
 handel multiple frames 
     Open the browser    ${url}    chrome
 # switch to the first frmae
 Select Frame    id: Frame1
     
     ${frame1_Text}=    Get Text    sampleHeading
     Log
     
     
     #switch to main frame
     Unselect Frame
     #swicth to the seconf frame
     Select Frame    id:Frame2
