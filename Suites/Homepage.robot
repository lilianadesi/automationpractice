*** Settings ***
Documentation       Homepage testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Homepage.robot
Suite Setup         Open Url Homepage
Suite Teardown      Close Browser
 

*** Test Cases ***
User Should Be Able To See Homepage
    Verity Current Url is Homepage Url
    Verity Homepage Logo



