*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    open browser    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F  chrome
    input text      id:Email    admin@yourstore.com
    input text      id:Password     admin
    click element   xpath://button[@type='submit']
    close browser

*** Keywords ***