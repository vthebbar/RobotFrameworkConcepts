*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://courses.letskodeit.com/practice

*** Test Cases ***
TestCheckbox
    open browser   ${url}  ${browser}
    maximize browser window
    # Every statement will wait for 2 seconds to execute
    set selenium speed      2seconds

    # selecting checkbox - name or selector
    select checkbox     honda

    select checkbox     id:bmwcheck

    unselect checkbox   id:hondacheck

    close browser


*** Keywords ***


