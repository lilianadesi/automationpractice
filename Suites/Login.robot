*** Settings ***
Documentation       Login testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Login.robot
 

*** Test Cases ***
User Should Be Able To See Login
    [Documentation]         Test to verify that User Should Be Able To See Login
    [Setup]                    Open Browser Chrome

    User click button sigin
    User Input Email
    User Input Password
    User click button sigin
    Verity name account

     [Teardown]                 Close Browser