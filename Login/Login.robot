*** Settings ***
Library                         SeleniumLibrary
Library                         DataDriver      ../Resources/credentials.csv         sheet_name=Sheet1

Test Setup                     Open Browser                    ${base_url}     ${Browser_type}        
Test Teardown                  Close Browser
Test Template                   I Login with valid email and password
Variables                       ../Resources/locator.yaml

*** Variables ***
${base_url}                     http://automationpractice.com/index.php?controller=authentication&back=my-account
${Browser_type}                 chrome

*** Keywords ***
I Login with valid email and password 
    [Arguments]                 ${email}                    ${password}
    Maximize Browser Window
    Input Text                  ${email_login}              ${email}
    Input Password              ${password_login}           ${password}
    Click Button                ${button_login}      
    Sleep                       2s


*** Test Cases ***
I Login with valid email and password using csv file             ${email}                    
