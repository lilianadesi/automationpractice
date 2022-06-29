*** Settings ***
Documentation       Account keywords
Variables           ../Resources/locators.yaml

*** Variables ***
${Homepage_url}     http://automationpractice.com/
${email}            budibudi@gmail.com
${password}         12345678
${Subject}          1
${Message}          Final test


*** Keywords ***
Open Browser Chrome
    Open Browser            browser=Chrome      url=${Homepage_url}
    Maximize Browser Window

User Login
    Click Element                   ${sigin}     

User Input Email
    Input Text                      ${email_login}          ${email}

User Input Password
    Input Password                  ${password_login}       ${password}
    
User click button sigin
    Click button                    ${button_login}

User click button Contact US
     Click Element                  ${contact}

User select Subject 
    Select From List By Index       ${subject1}             ${Subject}

User input Message
    Input Text                      ${message1}             ${Message}

User click button Send
    Click button                    ${button_massage}
    Element Should Be Visible       ${message_success}
    Sleep                   2s