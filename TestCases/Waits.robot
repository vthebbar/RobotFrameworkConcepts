*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register


*** Test Cases ***
TestWaits
    ${speed}=  get selenium speed
    log to console  ${speed}
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed      2seconds
    #sleep   1

    select radio button     Gender  M
    input text  id:FirstName    Raj
    input text  id:LastName     Kumar
    input text  id:Email        test@gmail.com
    input text  id:Password     abc@123
    input text  id:ConfirmPassword  abc@123

    ${speed}=   get selenium speed
    log to console  ${speed}
    #sleep   1
    close browser