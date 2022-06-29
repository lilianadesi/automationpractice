*** Settings ***
Documentation       Login keywords
Variables           ../Resources/locators.yaml

*** Variables ***
${Homepage_url}     http://automationpractice.com/
${email}            budibudi@gmail.com
${password}         12345678


*** Keywords ***
Open Browser Chrome
    Open Browser            browser=Chrome      url=${Homepage_url}
    Maximize Browser Window

User click button sigin
    Click Element               ${sigin}     

User Input Email
    Input Text                  ${email_login}          ${email}

User Input Password
    Input Password              ${password_login}       ${password}
    
User click button sigin
    Click button                ${button_login}

Verity name account
    Element Should Be Visible   ${name_account}
    Sleep   2s