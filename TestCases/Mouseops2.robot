*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseOps2

    open browser  http://testautomationpractice.blogspot.com  chrome
    maximize browser window

    # Double click
    double click element    xpath://button[text()='Copy Text']
    sleep   2


    # Drag and Drop
    drag and drop   id:draggable    id:droppable
    sleep   2

    close browser