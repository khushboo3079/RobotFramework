*** Settings ***
Library    Selenium2Library    
Library    OperatingSystem    
Resource    ../ObjectRepository/Locators.robot
Resource    ../TestData/ApplicationData.robot



*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}      firefox


*** Keywords ***
launch Application
   #  Wait Until Element Is Visible    ${browser}
    Open Browser   ${url}     ${browser}
    Maximize Browser Window
 
 Valid login to application
    Input Text    ${USERNAME_TEXTFIELD}  ${username}
    Input Text    ${PASSWORD_TEXTFIELD}   ${password}
    Click Button  ${SUBMIT_BUTTON} 
   Page Should Contain Element    ${CHECK_LOGIN} 
    Title Should Be    Welcome    
 Invalid login to application 
      Input Text    ${USERNAME_TEXTFIELD}  ${username}
    Input Text    ${PASSWORD_TEXTFIELD}   ${wrongpassword}
    Click Button  ${SUBMIT_BUTTON} 
    Wait Until Element Is Enabled    ${INVALID_CREDENTIALS}     
    Page Should Contain Element   ${INVALID_CREDENTIALS} 
    Log     Plz enter valid  Creditials        