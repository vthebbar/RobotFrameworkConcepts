*** Settings ***
Library     OperatingSystem
Library     DatabaseLibrary
Library     SeleniumLibrary

Suite Setup     Connect To Database     pymysql   ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}         openshop
${DBUser}         admin
${DBPassword}     admin
${DBHost}         127.0.0.1
${DBPort}         3306

*** Test Cases ***
create robot table
    ${output}=  Execute SQL String  Create table robot(id integer, name varchar(20));
    log to console  ${output}
    should be equal as strings  ${output}    None

# For single record insert
Insert data to table
    ${output}=  Execute SQL String  Insert Into robot table values(1, "robo");
    log to console  ${output}
    should be equal as strings  ${output}    None


# For multiple record insert using SQL file
Insert multiple data to table
    ${output}=  Execute SQL Script    ../TestData/QueryFile.sql
    log to console  ${output}
    should be equal as strings  ${output}    None

# Verify table data present or not present in table
Verify data present in table
    check if exists in database     select * from robot where name="robo";


Verify data not present in table
    check if not exists in database     select * from robot where name="Ravi";


# Verify table exist in DB
Check table exists in DB
    table must exist    robot


# Verify row count

Verify row count
    row count is 0      select * from robot where name="xyz";

Verify row count value
    row count is equal to x     select * from robot;     4


Row count is greater than some value
    row count is greater than x     select * from robot;    1

Row count less than some value
    row count is less than x        select * from robot;    10


# Update table record

update record in robot table
    ${output}=  execute sql string      update robot  set name="Raju" where id=1
    log to console   ${output}
    should be equal as strings    ${output}   None

# Retrive record

Retrive records from table
    @{results}=     query        select * from robot;        # @{results} list variable
    log to console       many      @{results}


# delete
Delete records from table
    ${output}=      execute sql string      delete from robot;
    should be euaql as strings  ${output}   None
