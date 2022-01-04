*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ForLoopCases
     # For Loop 1
     FOR    ${var}    IN RANGE      1       5
        Log to console    var: ${var}
     END

    # For Loop 2

    @{list}     create list     1   2   3   4   5
    FOR     ${i}    IN      @{list}
        log to console  ${i}
    END

    # For loop with exit
    FOR     ${i}    IN       @{list}
        log to console  ${i}
        exit for loop if    ${i}==4
    END