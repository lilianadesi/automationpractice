*** Settings ***
Documentation       Account testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Account.robot
 

*** Test Cases ***
User Should Be Able To See Account
    [Documentation]         Test to verify that User Should Be Able To See Account
    [Setup]                    Open Browser Chrome

    User Login
    User Input Email
    User Input Password
    User click button sigin
    Verity Order history and details
    Verity My credit slips
    Verity My addresses
    Verity My personal information
    Verity My wishlists

     [Teardown]                 Close Browser