*** Settings ***
Library                         SeleniumLibrary
Library                         DataDriver      ../Resources/credentials.csv         sheet_name=Sheet1

Test Setup                     Open Browser                    ${base_url}     ${Browser_type}        
Test Teardown                  Close Browser
Test Template                  Contact Us Browser
Variables                       ../Resources/locator.yaml

*** Variables ***
${base_url}                     http://automationpractice.com/index.php?controller=authentication&back=my-account
${Browser_type}                 chrome

*** Keywords ***
Contact Us Browser 
    [Arguments]                 ${email}  ${password}  ${subject}  ${message}
    Maximize Browser Window
    Input Text                  ${email_login}              ${email}
    Input Password              ${password_login}           ${password}
    Click Button                ${button_login}    
    Click Element               ${contact}
    Select From List By Index   ${subject1}                  ${subject}
    Input Text                  ${message1}                  ${message}
    Click Button                ${button_massage}
    Sleep                       5s  


*** Test Cases ***
Contact Us Browser using csv file             ${email}    