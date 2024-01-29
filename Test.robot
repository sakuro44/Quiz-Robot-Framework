*** Settings ***
Documentation  Test
Library   SeleniumLibrary
Suite Setup  Open Browser  http://automationexercise.com
Suite Teardown    Close Browser

*** Variables ***
${PRODUCTNAME}  Cotton Silk Hand Block Print Saree


*** Keywords ***
Cilck Pages Products
    Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]

Input Product Name
    [Arguments]   ${PRODUCTNAME}
    Input Text   //*[@id="search_product"]    ${PRODUCTNAME}
    
Cilck search button
    Click Button  //*[@id="submit_search"]

   
*** Test Cases ***
Login with Standard User  
    [Documentation]  This testcase is expected to show "Products"
    Cilck Pages Products
    Input Product Name   ${PRODUCTNAME}
    Cilck search button
    Page Should Contain  Products