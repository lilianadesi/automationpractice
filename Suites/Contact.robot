*** Settings ***
Documentation       Account testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Contact.robot
 

*** Test Cases ***
User Should Be Able To See Account
    [Documentation]         Test to verify that User Should Be Able To See Account
    [Setup]                    Open Browser Chrome

    User Login
    User Input Email
    User Input Password
    User click button sigin
    User click button Contact US
    User select Subject 
    User input Message
    User click button Send



     [Teardown]                 Close Browser