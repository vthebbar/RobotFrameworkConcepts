*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/
${browser}   chrome


*** Keywords ***

open app
    open browser   ${url}   ${browser}
    maximize browser window

close app
    close browser

input username
    [Arguments]   ${username}
    input text  id:txtUsername  ${username}

input password
    [Arguments]     ${password}
    input text  id:txtPassword   ${password}

click login button
    click element   id:btnLogin

click logout link
    click link  Logout

# User defined Validations keywords

# for invalid login
Error message should be visible
    page should contain element     xpath://span[@id='spanMessage']

# for valid login
Dashboard page should be visible
    page should contain     Dashboard

Username cannot be empty
    page should contain     Username cannot be empty

Password can not be empty
    page should contain     Password cannot be empty

