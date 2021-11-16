*** Settings ***

Library   SeleniumLibrary
Resource  FWResource.robot
#Suite Setup  Open Fastwork
#Suite Teardown  CloseDown


*** Test Cases ***

Testcase1-Register_Fastwork
    Sign Up With Email Account
    Sign up with email account that had been registered
#    Sign Up With Google Account            req new test data

Testcase2-Signin_Fastwork
     Sign In With Email Account
     Sign In With Google Account

Testcase3-Testcase3-Testcase3-Search_System
    Search by typing keyword
    Search by typing keyword that doesn't exist
