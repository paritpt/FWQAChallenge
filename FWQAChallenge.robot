*** Settings ***

Library   SeleniumLibrary
Resource  FWResource.robot

*** Test Cases ***

Testcase1-Register_Fastwork
    Sign Up With Email Account
    Sign up with email account that had been registered
    Sign Up With Google Account

Testcase2-Signin_Fastwork
     Sign In With Email Account
     Sign in with Email Account : wrong email
     Sign in with Email account : Wrong password
     Sign In With Google Account

Testcase3-Search_System
    Search by typing keyword
    Filter professional badge
    Filter รับแบ่งชำระ badge
    Filter professional badge + รับแบ่งชำระ badge
    Search by typing keyword that doesn't exist
