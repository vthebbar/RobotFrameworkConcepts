*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    input text      id:Email    admin@yourstore.com
    input text      id:Password     admin
    click element   xpath://button[@type='submit']