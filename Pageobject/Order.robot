*** Settings ***
Documentation       Order keywords
Variables           ../Resources/locators.yaml

*** Keywords ***
User click button woman
    Click Element                   ${woman}

User Click Produk
    Click Element                   ${Produk}

User click add to cart
    Click Button                    ${addtocart}

User click proceed to checkout
    Wait Until Element Is Visible   ${element_checkout}     timeout=10
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