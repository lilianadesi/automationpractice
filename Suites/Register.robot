*** Settings ***
Documentation       Register testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Register.robot
 

*** Test Cases ***
User Should Be Able To See Register
    [Documentation]         Test to verify that User Should Be Able To See Register
    [Setup]                    Open Browser Chrome

    User click button sigin
    User Input Email
    User clik button Register
    User click element gender
    User Input Fristname
    User Input Lastname
    User Input Password
    User select date of Birth
    User select month of Birth
    User select year of Birth
    User click Element newsletter
    User click Element receive
    User Input Company
    User Input Address
    User Input Address2
    User Input City
    User select State
    User Input Zip
    User select Country
    User Input Additional information
    User Input Home phone
    User Input Mobile phone
    User Input Assign an address alias
    User Click button Register

     [Teardown]                 Close Browser