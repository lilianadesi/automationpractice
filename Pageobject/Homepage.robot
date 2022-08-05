*** Settings ***
Documentation       Homepage keywoard
Variables           ../Resources/locators.yaml
Variables           ../Resources/Variable.py

*** Keywords ***
Open Url Homepage
    Open Browser    browser=Chrome      url=${Homepage_url}

Verity Current Url is Homepage Url
    [Documentation]         Verity Current Url is Homepage Url
    Location Should Be              ${Homepage_url}

Verity Homepage Logo
    [Documentation]          Verity Homepage Logo
    Wait Until Element Is Visible       ${homepage_logo}
    Element Should Be Visible           ${homepage_logo}        timeout=5
