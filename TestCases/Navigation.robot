*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Navigation
    open browser    https://bing.com   chrome
    ${location}=    get location    # provides current URL
    log to console  ${location}

    go to  https://yahoo.com        # navigation
    ${location}=    get location
    log to console  ${location}

    go back                             # returns to previous page
    wait until location contains  bing
    ${location}=   get location
    log to console  ${location}

    close browser