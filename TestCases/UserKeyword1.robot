*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${url}  https://mail.rediff.com/cgi-bin/login.cgi
${browser}   chrome


*** Test Cases ***
Keydemo
    ${page_title}=  launchBrowser  ${url}  ${browser}
    input text  id:login1   test@email.com
    input text  id:password     abc@123
    log to console  ${page_title}
    log  ${page_title}
    sleep  2
    close browser