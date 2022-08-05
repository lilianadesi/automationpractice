*** Settings ***
Documentation       Account testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Account.robot
Resource            ../Pageobject/Base.robot
Resource            ../Pageobject/Login.robot
Suite Setup         Base.Open Browser Chrome
Suite Teardown       Close Browser
 

*** Test Cases ***
User Should Be Able To See Account
    [Documentation]         Test to verify that User Should Be Able To See Account
    Login.User should be able to login with valid data          user_email=${email}         user_password=${password}
    Verity Order history and details
    Verity My credit slips
    Verity My addresses
    Verity My personal information
    Verity My wishlists