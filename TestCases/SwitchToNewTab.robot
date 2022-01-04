*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://vthebbar.blogspot.com/connect
${browser}    chrome


*** Test Cases ***
WindowTest
    open browser  ${url}  ${browser}
    maximize browser window
    click element  xpath://a[@href='https://github.com/vthebbar']

    # Switching to another window (we can use URL or title)
    switch window  url=https://github.com/vthebbar
    click element  xpath://a[@href='https://twitter.com/vthebbar']

    # swicthing back again to previous window using title
    switch window   title=Vishwanatha Hebbar: Connect
    click element  xpath://a[@href='https://www.linkedin.com/in/vthebbar/']
    sleep   2
    close all browsers