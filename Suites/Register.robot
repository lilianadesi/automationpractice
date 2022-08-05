*** Settings ***
Documentation       Register testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Register.robot
Resource            ../Pageobject/Base.robot
Suite Setup          Base.Open Browser Chrome
Suite Teardown       Close Browser

*** Test Cases ***
User Should Be Able To See Register
    [Documentation]         Test to verify that User Should Be Able To See Register
    User Register with valid email
    User click element gender
    User Input Fristname
    User Input Lastname
    User Input New Password
    User select date of Birth
    User select month of Birth
    User select year of Birth
    User click Element newsletter
    User click Element receive
    User Input Company
    User Input Address
    # User Input Address2
    User Input City
    User select State
    User Input Zip
    User select Country
    User Input Additional information
    User Input Home phone
    User Input Mobile phone
    User Input Assign an address alias
    User Click button Register