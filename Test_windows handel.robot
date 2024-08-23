*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com/browser-windows


*** Test Cases ***
handel multiple frames 
     Open the browser    ${url}    chrome
     Maximize Browser Window
     
     #Click Button open a new tab
     Click Button    id:tabButton
     
     #get window handels
     ${main_window}=    Get Window Handles    
     ${all_window}=    Get Window Handles

     #switch to new the new window
     Switch Window    ${all_window[1]}    
     ${new_window_Text}=    Get Text    Xpath://h1
     Log    Test From new window: ${new_window_text}