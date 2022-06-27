*** Settings ***
Library                         SeleniumLibrary
Library                         DataDriver      ../Resources/credentials.csv         sheet_name=Sheet1

Test Setup                     Open Browser                    ${base_url}     ${Browser_type}        
Test Teardown                  Close Browser
Test Template                  My Account in website
Variables                       ../Resources/locator.yaml

*** Variables ***
${base_url}                     http://automationpractice.com/index.php?controller=authentication&back=my-account
${Browser_type}                 chrome

*** Keywords ***
My Account in website 
    [Arguments]                 ${email}  ${password}  
    Maximize Browser Window
    Input Text                  ${email_login}              ${email}
    Input Password              ${password_login}           ${password}
    Click Button                ${button_login}   
    Element Should Be Visible   ${myorders}   
    Element Should Be Visible   ${mycreditslips}
    Element Should Be Visible   ${myaddresses}
    Element Should Be Visible   ${mypersonalinfo}
    Sleep                       5s  


*** Test Cases ***
My Account in website using csv file             ${email}    