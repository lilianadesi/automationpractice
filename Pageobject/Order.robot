*** Settings ***
Documentation       Order keywords
Variables           ../Resources/locators.yaml

*** Variables ***
${Homepage_url}     http://automationpractice.com/
${email}            budibudi@gmail.com
${password}         12345678


*** Keywords ***
Open Browser Chrome
    Open Browser            browser=Chrome      url=${Homepage_url}
    Maximize Browser Window

User click sigin
    Click Element                   ${sigin}     

User Input Email
    Input Text                      ${email_login}          ${email}

User Input Password
    Input Password                  ${password_login}       ${password}
    
User click button sigin
    Click Button                    ${button_login}

User click button woman
    Click Element                   ${woman}

User Click Produk
    Click Element                   ${Produk}

User click add to cart
    Click Button                    ${addtocart}

User click proceed to checkout
    Wait Until Element Is Visible   ${element_checkout}
    Click Element                   ${button_checkout}

User click checkout summary
    Click Element                   ${summary}

User click checkout address
    Click Element                   ${checkout_address}

User checkbox agree to the terms of service 
    Click Element                   ${agree}

User click checkout shipping
    Click Element                   ${shipping}

User Click Payment
    Click Element                   ${Payment}

User confirm payment order
    Click Element                   ${confirm_order}
    Element Should Be Visible       ${succes}
    Sleep   2s