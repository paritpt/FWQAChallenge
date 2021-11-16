*** Variables ***

${urlFastwork}  https://staging.fastwork.co
${urlFastworkSearch}  https://staging.fastwork.co/search
${btnLogin}  //a[@id="login-link"]
${btnSignUp}  //a[@href="/oauth/signup"]
${inpUserName}  //input[@id="signup-request-username"]
${inpFirstName}  //input[@id="signup-request-first_name"]
${inpLastName}  //input[@id="signup-request-last_name"]
${inpEmail}  //input[@id="signup-request-email"]
${inpPassword}  //input[@id="signup-request-password"]
${inpConfPassword}  //input[@id="signup-request-confirm_password"]
${inpPhoneNo}  //input[@id="signup-request-phone_number"]
${chkboxTCConsent}  //input[@id="post-TCConsent"]
${chkboxPPConsent}  //input[@id="post-PPConsent"]
${chkboxMKTConsent}  //input[@id="post-MKTConsent"]
${btnConfirmSignUp}  //button[@class="signup-btn tb-button -fluid _mgt-24px"]
${formConfirmEmail}  //form[@id="verify-account-request-form"]
${btnGoogleSignin}  //a[@href="/auth/google"]
${btnGoogleSignup}  //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-dgl2Hf ksBjEc lKxP2d uRo0Xe TrZEUc lw1w4b"]
${inpGoogleFirstName}  //input[@id="firstName"]
${inpGoogleLastName}  //input[@id="lastName"]
${inpGoogleUserName}  //input[@id="username"]
${inpGooglePassword}  //input[@type="password"]
${inpGoogleConfirmPassword}  //input[@name="ConfirmPasswd"]
${btnNext}  //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"]
${inpGooglePhoneNo}  //*[@id="phoneNumberId"]
${inpGoogleSignup}  //input[@type="email"]
${btnConfirmGoogleSignUp}  //button[@class="signup-btn tb-button -fluid _ffml-kanit btn-ff"]
${iBell}  //i[@class="tb-icon fas fa-bell"]
${errorEmailAlreadyExist}  //div[@class="invalid-feedback help-block"]
${inpEmailSignin}  //input[@type="text"]
${btnNextSighup}  //button[@class="tb-button -fluid _mgt-12px"]
${urlFastworkSearch}  https://staging.fastwork.co/search
${inpPasswordSignIn}  //input[@id="signin-request-Password"]
${btnSignIn}  //button[@class="tb-button -fluid"]
${inpSearch}  //input[@data-selenium="navigation-bar.input.search"]
${labelSearch}  //div[@class="u-halign-split"]//div//strong
${labelSearchNotFound}  //div[@class="u-halign-split"]//div
${cardProduct}  //div//a[@rel="noopener noreferrer"]

#testdata for Sign Up With Google Account and Sign In With Email Account and Sign In With Google Account
${txtUserName}  paritbutqap
${txtFirstName}  parit
${txtLastName}  butqa
${txtEmail}  paritbutqa.p@gmail.com
${txtPassword}  paritbutqa666
${txtPhoneNo}  0947849669

#testdata for Sign Up With Email Account
${txtUserNameE}  paritbutqapp
${txtEmailE}  paritbutqa.pp@gmail.com

#testdata for Testcase3
${txtSearch}  แบมแบม
${txtSearchNotFound}  llumllum
*** Keywords ***

Open Fastwork
    Open Browser  ${urlFastwork}   Chrome
CloseDown
    Close Browser
Open Fastwork Search
    Open Browser  ${urlFastworkSearch}   Chrome


Sign Up With Email Account
    Open Fastwork
    click link  ${btnLogin}
    click link  ${btnSignUp}
    input text  ${inpUserName}  ${txtUserNameE}
    input text  ${inpFirstName}  ${txtFirstName}
    input text  ${inpLastName}  ${txtLastName}
    input text  ${inpEmail}  ${txtEmailE}
    input text  ${inpPassword}  ${txtPassword}
    input text  ${inpConfPassword}  ${txtPassword}
    input text  ${inpPhoneNo}  ${txtPhoneNo}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
#   click button  ${chkboxMKTConsent}
    click button  ${btnConfirmSignUp}
    Element should be visible  ${formConfirmEmail}
    CloseDown

Sign up with email account that had been registered
    Open Fastwork
    click link  ${btnLogin}
    click link  ${btnSignUp}
    input text  ${inpUserName}  ${txtUserName}
    input text  ${inpFirstName}  ${txtFirstName}
    input text  ${inpLastName}  ${txtLastName}
    input text  ${inpEmail}  ${txtEmail}
    input text  ${inpPassword}  ${txtPassword}
    input text  ${inpConfPassword}  ${txtPassword}
    input text  ${inpPhoneNo}  ${txtPhoneNo}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
#   click button  ${chkboxMKTConsent}
    click button  ${btnConfirmSignUp}
    Element should be visible  ${errorEmailAlreadyExist}
    CloseDown

Sign Up With Google Account
    Open Fastwork
    click link  ${btnLogin}
    click link  ${btnSignUp}
    click link  ${btnGoogleSignin}
    input text  ${inpGoogleSignup}  ${txtEmail}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${inpGooglePassword}
    input text  ${inpGooglePassword}  ${txtPassword}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${chkboxTCConsent}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
    click button  ${btnConfirmGoogleSignUp}
    Sleep  3s
    Wait Until Element Is Visible  ${iBell}
    CloseDown

Sign In With Email Account
    Open Fastwork
    click link  ${btnLogin}
    input text  ${inpEmailSignin}  ${txtEmail}
    click button  ${btnNextSighup}
    input text  ${inpPasswordSignIn}  ${txtPassword}
    click button  ${btnSignIn}
    Sleep  3s
    Wait Until Element Is Visible  ${iBell}
    CloseDown

Sign In With Google Account
    Open Fastwork
    click link  ${btnLogin}
    click link  ${btnGoogleSignin}
    input text  ${inpGoogleSignup}  ${txtEmail}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${inpGooglePassword}
    input text  ${inpGooglePassword}  ${txtPassword}
    click button  ${btnNext}
    Sleep  3s
    Wait Until Element Is Visible  ${iBell}
    CloseDown

Search by typing keyword
    Open Fastwork Search
    Input Text  ${inpSearch}  ${txtSearch}
    Press Keys  ${inpSearch}  ENTER
    Wait Until Element Contains  ${labelSearch}  ${txtSearch}
    Wait Until Element Is Visible  ${cardProduct}
Search by typing keyword that doesn't exist
    Input Text  ${inpSearch}  ${txtSearchNotFound}
    Press Keys  ${inpSearch}  ENTER
    Wait Until Element Contains  ${labelSearch}  ${txtSearchNotFound}
    Wait Until Element Contains  ${labelSearchNotFound}  0
    CloseDown


