*** Settings ***
Library    Selenium2Library 
Library    OperatingSystem   
Resource      ../Keyword/commonKeyword.robot  




*** Variables ***
${username}     %{My_Username}
${password}     %{My_Password}
${wrongpassword}    %{My_WrongPassword}
@{CREDENTIALS}    Admin123 admin123

