*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://courses.letskodeit.com/practice

*** Test Cases ***
TestMultiSelectCheckbox
    open browser    ${url}     ${browser}
    maximize browser window
    set selenium speed      1second

    # Multi select checkbox      name of list box           value/index/label
    select from list by value   multiple-select-example     apple
    select from list by index   multiple-select-example     1
    select from list by label   multiple-select-example     Peach

    unselect from list by value     multiple-select-example   apple
    unselect from list by index     multiple-select-example   1
    unselect from list by label     multiple-select-example   Peach


    close browser