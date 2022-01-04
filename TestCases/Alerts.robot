*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://mail.rediff.com/cgi-bin/login.cgi

*** Test Cases ***
AlertTest
    open browser    ${url}     ${browser}
    maximize browser window


    click element  xpath://input[@type='submit']
    handle alert   accept
    sleep  2
    click element   xpath://input[@type='submit']
    handle alert    dismiss
    sleep  2
    #click element  xpath://input[@type='submit']
    #handle alert   leave
    #sleep  2

    click element   xpath://input[@type='submit']
    alert should be present    Please enter a valid user name
    close browser
