*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseOps
    open browser   https://bing.com   chrome
    maximize browser window

    # Right click / contect click
    open context menu   id:sb_form_q

    sleep  2
    close browser

    # Double click
    open browser    http://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    double click element    xpath://button[text()='Copy Text']
    sleep   2


    # Drag and Drop
    drag and drop   id:draggable    id:droppable
    sleep   2

    close browser


    close browser


