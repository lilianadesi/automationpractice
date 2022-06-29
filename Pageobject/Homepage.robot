*** Settings ***
Documentation       Homepage keywoard
Variables           ../Resources/locators.yaml

*** Variables ***
${Homepage_url}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser            browser=Chrome      url=${Homepage_url}
    Maximize Browser Window
    
Verity Current Url is Homepage Url
    [Documentation]         Verity Current Url is Homepage Url
    Location Should Be              ${Homepage_url}

Verity Homepage Logo
    [Documentation]          Verity Homepage Logo
    Element Should Be Visible       ${homepage_logo} 
    Sleep   2s