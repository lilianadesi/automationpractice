*** Settings ***
Documentation       Register keywords
Variables           ../Resources/locators.yaml
Variables           ../Resources/Variable.py

*** Keywords ***
User Register with valid email
    [Documentation]         User Input Email
    Input Text                  ${email_registrasi}            ${email} 
    Click Button                ${create_registrasi}

User click element gender
    [Documentation]         User click element gender
    Wait Until Element Is Visible       ${gender}       timeout=5
    Click Element                       ${gender}

User Input Fristname
    [Documentation]         User Input Fristname
    Input Text                  ${fristname}                   ${firstname}        

User Input Lastname
    [Documentation]         User Input Lastname
    Input Text                  ${lastname1}                    ${lastname} 

User Input New Password
    [Documentation]         User Input Password
    Input Password              ${create_password}              ${password}

User select date of Birth
    [Documentation]         User select date of Birth
    Select From List By Index   ${date1}                    ${date}

User select month of Birth
    [Documentation]         User select month of Birth
    Select From List By Index   ${month1}                   ${month}

User select year of Birth
    [Documentation]         User select year of Birth
    Select From List By Index    ${year1}                    ${year}

User click Element newsletter
    [Documentation]         User click Element newsletter
    Click Element               ${checkbox_newsletter}

User click Element receive
    [Documentation]         User click Element receive
    Click Element               ${checkbox_receive}

User Input Company
    [Documentation]         User Input Company
    Input Text                  ${addres_company}               ${company} 

User Input Address
    [Documentation]         User Input Address
    Input Text                  ${address}                      ${address1}

User Input Address2
    [Documentation]         User Input Address2
    Input Text                  ${Addressline2}                 ${address2} 

User Input City
    [Documentation]         User Input City
    Input Text                  ${city1}                        ${city} 
                    
User select State
    [Documentation]         User select State
    Select From List By Index   ${state1}                       ${state} 

User Input Zip
    [Documentation]         User Input Zip
    Input Text                  ${zip1}                         ${zip}

User select Country
    [Documentation]         User select Country
    Select From List By Index   ${country1}                     ${country}

User Input Additional information
    [Documentation]         User Input Additional information
    Input Text                  ${additional1}                  ${additional}

User Input Home phone
    [Documentation]         User Input Home phone
    Input Text                  ${homephone1}                   ${homephone} 

User Input Mobile phone
    [Documentation]         User Input Mobile phone
    Input Text                  ${mobile_phone1}                ${mobilephone}

User Input Assign an address alias
    [Documentation]         User Input Assign an address alias
    Input Text                  ${alias}                        ${Assign} 

User Click button Register
    [Documentation]         User Click button Register
    Click Button                ${register}