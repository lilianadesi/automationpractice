*** Settings ***
Library                         SeleniumLibrary
Library                         DataDriver      ../Resources/credentials.csv         sheet_name=Sheet1

Test Setup                     Open Browser                    ${base_url}     ${Browser_type}        
Test Teardown                  Close Browser
Test Template                  Homepage Browser
Variables                       ../Resources/locator.yaml

*** Variables ***
${base_url}                     http://automationpractice.com/
${Browser_type}                 chrome

*** Keywords ***
Homepage Browser 
    Element Should Be Visible       ${logo}
    

*** Test Cases ***
Homepage Browser using csv file          