*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://courses.letskodeit.com/practice


*** Test Cases ***
Testing Radio Button
    OPEN BROWSER    ${url}  ${browser}
    maximize browser window

    # Selecting radio button   name value of radio button are parameters
    select radio button     cars    bmw

    sleep   2
    close browser



*** Keywords ***
