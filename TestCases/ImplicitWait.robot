*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register


*** Test Cases ***
TestWaits
    open browser    ${url}      ${browser}
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}                     # Default implicit wait value =0

    # implicit wait is applicable for all elements in web page
    set selenium implicit wait  10 seconds                  # sets implicit wait to 10 second

    select radio button     Gender  M
    input text  id:FirstName    Raj
    input text  id:LastName     Kumar
    input text  id:Email        test@gmail.com
    input text  id:Password     abc@123
    input text  id:ConfirmPassword  abc@123

    close browser