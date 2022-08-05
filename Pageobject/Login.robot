*** Settings ***
Documentation       Login keywords
Variables           ../Resources/locators.yaml
Variables           ../Resources/Variable.py


*** Keywords ***
User Input Email
    [Arguments]                 ${user_email}
    Input Text                  ${email_login}          ${user_email}

User Input Password
    [Arguments]                 ${user_password}
    Input Password              ${password_login}       ${user_password}
    
User click button sigin
    Click button                ${button_login}

User should be able to login with valid data
    [Arguments]                  ${user_email}      ${user_password}
    User Input Email             ${user_email}
    User Input Password          ${user_password}    
    User click button sigin                


Verity name account
    Wait Until Element Is Visible   ${name_account}
    Element Should Be Visible   ${name_account}