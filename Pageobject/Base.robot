Documentation       Homepage keywoard
Variables           ../Resources/locators.yaml
Variables           ../Resources/Variable.py

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=Chrome      url=${Base_url}
    Maximize Browser Window
    Sleep   2s