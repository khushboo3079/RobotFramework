*** Settings ***
Library    Selenium2Library
Resource    ../Keyword/commonKeyword.robot
Resource    ../ObjectRepository/Locators.robot
Test Setup     Launch Application
Test Teardown  Close All Browsers

*** Test Cases ***

Login_Functionality_TC001
    [Documentation]   This test script test that to login the application with valid username and passowrd
    ...    
  
  Valid login to application

Invalid_Login_Functionality_TC002
    [Documentation]   This test script test that to login the application with invalid username and passowrd
    ...    
  
  Invalid login to application
Functionality_TC003
    Log    This is my 3rd Test case
    
Functionality_TC004
    Log    This is my 4th Test case
    
    