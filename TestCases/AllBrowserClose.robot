*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url1}     https://google.com
${url2}     https://yahoo.com

*** Test Cases ***
CloseBrowsers
    open browser  ${url1}  ${browser}
    maximize browser window

    open browser  ${url2}  ${browser}

    #close browser          # closes latest opened browser
    close all browsers        # closes all opened browsers
