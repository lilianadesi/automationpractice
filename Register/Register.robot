*** Settings ***
Library                         SeleniumLibrary
Library                         DataDriver      ../Resources/credentials.csv         sheet_name=Sheet1

Test Setup                     Open Browser                    ${base_url}     ${Browser_type}        
Test Teardown                  Close Browser
Test Template                   I Register with email and password
Variables                       ../Resources/locator.yaml

*** Variables ***
${base_url}                     http://automationpractice.com/
${Browser_type}                 chrome

*** Keywords ***
I Register with email and password
    [Arguments]                    ${email}      ${password}    ${firstname}    ${lastname}     ${company}  ${mobilephone}  ${date}     ${month}     ${year2}   ${address1}     ${address2}      ${city}    ${state}    ${zip}  ${country}  ${additional}   ${homephone}
    Maximize Browser Window
    Click Element                  ${sigin}                   
    Input Text                     ${email_registrasi}          ${email}
    Click Button                   ${create_registrasi}
    Wait Until Element Is Visible  ${gender}                   
    Click Element                  ${gender}
    Input Text                     ${fristname}                 ${firstname}
    Input Text                     ${lastname1}                 ${lastname}
    Input Text                     ${email_create}              ${email}
    Input Password                 ${create_password}           ${password}      
    Select From List By Index      ${date1}                     ${date}
    Select From List By Index      ${month1}                    ${month}
    Select From List By Index      ${year1}                     ${year2}
    Click Element                  ${checkbox_newsletter}   
    Click Element                  ${checkbox_receive}                         
    Input Text                     ${addres_company}            ${company}
    Input Text                     ${address}                   ${address1}
    Input Text                     ${Addressline2}              ${address2}
    Input Text                     ${city1}                     ${city}
    Select From List By Index      ${state1}                    ${state}
    Input Text                     ${zip1}                      ${zip}
    Select From List By Index      ${country1}                  ${country}
    Input Text                     ${additional1}               ${additional}
    Input Text                     ${homephone1}                ${homephone}
    input Text                     ${mobilephone1}              ${mobilephone}
    Click Button                   ${register} 
    sleep                          10s


*** Test Cases ***
I Register with email and password using csv file                 ${email}   
    





    