*** Settings ***
Documentation       Account keywords
Variables           ../Resources/locators.yaml


*** Keywords ***
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