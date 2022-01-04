*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      https://google.com
${browser}   chrome


*** Test Cases ***
CountLinks
    open browser    ${url}  ${browser}
    maximize browser window

    ${linkcount}=   get element count   xpath://a
    log to console  Total Links: ${linkcount}

    FOR     ${l}    IN RANGE    1       ${linkcount}+1
    ${libktext}=    get text  xpath:(//a)[${l}]
    log to console  ${libktext}
    END

    close browser