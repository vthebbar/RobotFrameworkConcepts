*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.techlistic.com/p/demo-selenium-practice.html
${browser}      chrome

*** Test Cases ***
Table
    open browser      ${url}    ${browser}
    maximize browser window

    ${row_count}    get element count   xpath://table[@id='customers']/tbody/tr
    ${column_count}  get element count   xpath://table[@id='customers']/tbody/tr/th

    log to console   Row count including header: ${row_count}
    log to console   Columns count: ${column_count}

    table header should contain     xpath://table[@id='customers']      Country
    table row should contain        xpath://table[@id='customers']   2   Google
    table cell should contain       xpath://table[@id='customers']    4     3   Austria

    FOR    ${i}   IN RANGE  2      ${row_count}+1
        FOR     ${j}    IN RANGE    1       ${column_count}+1
        ${val}=  get text    xpath://table[@id='customers']/tbody/tr[${i}]/td[${j}]
        log to console  ${val}
        END
    END

    close browser