*** Settings ***
Documentation       Homepage testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Homepage.robot
 

*** Test Cases ***
User Should Be Able To See Homepage
    [Documentation]         Test to verify that User Should Be Able To See Homepage
    [Setup]                    Open Browser Chrome

     Verity Current Url is Homepage Url
     Verity Homepage Logo

     [Teardown]                 Close Browser


