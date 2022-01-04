*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}   chrome
${url1}   https://bing.com
${url2}    https://google.com


*** Test Cases ***
TestMultipleWindows
    open browser  ${url1}  ${browser}
    maximize browser window

    open browser  ${url2}  ${browser}
    maximize browser window

    switch browser  1
    ${bing_title}=   get title
    log to console  Bing Title= ${bing_title}

    switch browser  2
    ${google_title}=  get title
    log to console  Google Title= ${google_title}

    close all browsers