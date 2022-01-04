*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://courses.letskodeit.com/practice


*** Test Cases ***
TestDropdown
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1seconds

    # selecting drop down       name of dropdown    label/index/value
    select from list by label   carselect   Benz
    select from list by index   carselect   0
    select from list by value   carselect  honda


    close browser