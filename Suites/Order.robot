*** Settings ***
Documentation       Order testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Order.robot
Resource            ../Pageobject/Base.robot
Resource            ../Pageobject/Login.robot
Suite Setup          Base.Open Browser Chrome
Suite Teardown       Close Browser
 

*** Test Cases ***
User Should Be Able To See Order
    [Documentation]         Test to verify that User Should Be Able To See ORder
    Login.User should be able to login with valid data              user_email=${email}         user_password=${password}
    User click button woman
    User Click Produk
    User click add to cart
    User click proceed to checkout
    User click checkout summary
    User click checkout address
    User checkbox agree to the terms of service
    User click checkout shipping
    User Click Payment
    User confirm payment order