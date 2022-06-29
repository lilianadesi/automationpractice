*** Settings ***
Documentation       Account keywords
Variables           ../Resources/locators.yaml

*** Variables ***
${Homepage_url}     http://automationpractice.com/
${email}            budibudi@gmail.com
${password}         12345678


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

Verity Order history and details
    Element Should Be Visible       ${history}

Verity My credit slips
    Element Should Be Visible       ${slips}

Verity My addresses
    Element Should Be Visible       ${addresses}

Verity My personal information
    Element Should Be Visible       ${information}

Verity My wishlists
    Element Should Be Visible       ${wishlists}
    Sleep       2s