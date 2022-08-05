*** Settings ***
Documentation       Account testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Contact.robot
Resource            ../Pageobject/Base.robot
Resource            ../Pageobject/Login.robot
Suite Setup         Base.Open Browser Chrome
Suite Teardown       Close Browser
 

*** Test Cases ***
User Should Be Able To See Account
    [Documentation]         Test to verify that User Should Be Able To See Account
    Login.User should be able to login with valid data      user_email=${email}         user_password=${password}
    User click button Contact US
    User select Subject 
    User input Message
    User click button Send