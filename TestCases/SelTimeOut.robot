*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register


*** Test Cases ***
TestWaits
    open browser    ${url}      ${browser}
    maximize browser window

    ${timeout}=     get selenium timeout
    log to console  ${timeout}

    set selenium timeout  10 seconds                # to change default time out, this is only applicable for next statement
    wait until page contains        Register        # default wait time is 5 seconds

    select radio button     Gender  M
    input text  id:FirstName    Raj
    input text  id:LastName     Kumar
    input text  id:Email        test@gmail.com
    input text  id:Password     abc@123
    input text  id:ConfirmPassword  abc@123

    close browser