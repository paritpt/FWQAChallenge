*** Settings ***

Library   SeleniumLibrary
Resource  FWResource.robot
Suite Setup  Initialize

#Suite Teardown  CloseDown



*** Test Cases ***

Testcase1-Register_Fastwork
#    Sign Up With Email Account             req new test data
    Sign up with email account that had been registered

#    Sign Up With Google Account            req new test data

Testcase2-Signin_Fastwork
    Sign In With Google Account


