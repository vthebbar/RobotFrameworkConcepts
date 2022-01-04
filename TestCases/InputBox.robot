*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Test Cases ***
TestingInputBox
#    create webdriver    Chrome  executable_path="C:/Users/user/PycharmProjects/Browser Drivers/chromedriver.exe"
    open browser    ${url}      ${browser}
    maximize browser window
    title should be     Your store. Login

# Approach 1 - for checking element status
    element should be visible   id:Email
    element should be enabled   id:Email

# Approach 2 - for checking element status
    ${password_txt}     set variable    id:Password
    element should be visible   ${password_txt}
    element should be enabled   ${password_txt}

    clear element text  id:Email
    clear element text  ${password_txt}
    sleep   1

    input text  id:Email    admin@yourstore.com
    input text  ${password_txt}     admin
    sleep   1

    click element   xpath://button[@type='submit']
    close browser


*** Keywords ***
