*** Settings ***
Documentation       Order testcase
Library             SeleniumLibrary
Resource            ../Pageobject/Order.robot
 

*** Test Cases ***
User Should Be Able To See Order
    [Documentation]         Test to verify that User Should Be Able To See ORder
    [Setup]                    Open Browser Chrome

    User click sigin
    User Input Email
    User Input Password
    User click button sigin
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

     [Teardown]                 Close Browser