*** Settings ***
Documentation       Account keywords
Variables           ../Resources/locators.yaml


*** Keywords ***
User click button Contact US
     Click Element                  ${contact}

User select Subject 
    Select From List By Index       ${subject1}             ${Subject}

User input Message
    Input Text                      ${message1}             ${Message}

User click button Send
    Click button                        ${button_massage}
    Wait Until Element is Visible       ${message_success}
    Element Should Be Visible           ${message_success}