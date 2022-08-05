*** Settings ***
Documentation       Login testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Login.robot
Resource            ../Pageobject/Base.robot
Suite Setup         Base.Open Browser Chrome
Suite Teardown      Close Browser
 

*** Test Cases ***
User not be able to login with invalid email      
    User Input Email                user_email=${invalid_email}
    User Input Password             user_password=${password} 
    User click button sigin
    

User not be able to login with invalid password
    User Input Email                user_email=${email}
    User Input Password             user_password=${invalid_password}
    User click button sigin         

User should be able to login with valid data
    User should be able to login with valid data        user_email=${email}         user_password=${password}
    Verity name account