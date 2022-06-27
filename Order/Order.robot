*** Settings ***
Library                         SeleniumLibrary
Library                         DataDriver      ../Resources/credentials.csv         sheet_name=Sheet1

Test Setup                     Open Browser                    ${base_url}     ${Browser_type}        
Test Teardown                  Close Browser
Test Template                   I Order
Variables                       ../Resources/locator.yaml

*** Variables ***
${base_url}                     http://automationpractice.com/index.php?controller=authentication&back=my-account
${Browser_type}                 chrome

*** Keywords ***
I Order 
    [Arguments]                 ${email}                    ${password}
    Input Text                  ${email_login}              ${email}
    Input Password              ${password_login}           ${password}
    Click Button                ${button_login}
    Click Element                   (//*[@title="Women"])[1]
    Click Element                   //*[@class="products-block-image"]
    Click Button                    //*[@class="exclusive"]
    Wait Until Element Is Visible   //*[@class="btn btn-default button button-medium"]
    Click Button                    //*[@class="btn btn-default button button-medium"]


*** Test Cases ***
I Order using csv file             ${email}