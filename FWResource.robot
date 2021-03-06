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
${btnNextSignIn}  //button[@class="tb-button -fluid _mgt-12px"]
${urlFastworkSearch}  https://staging.fastwork.co/search
${inpPasswordSignIn}  //input[@id="signin-request-Password"]
${btnSignIn}  //button[@class="tb-button -fluid"]
${inpSearch}  //input[@data-selenium="navigation-bar.input.search"]
${labelSearch}  //div[@class="u-halign-split"]//div//strong
${labelSearchNotFound}  //div[@class="u-halign-split"]//div
${cardProduct}  //div//a[@class="tb-card-product -animate card-product _cs-pt -has-border-color"]
${chkboxProfessional}  //input[@id="badges_Professional"]
${labelProfessional}  //img[@src="https://storage.googleapis.com/fastwork-asset/product_options/badge_professional_x3.png"]
${chkbox?????????????????????????????????}  //input[@id="badges_??????????????????????????????????????????????????????"]
${label?????????????????????????????????}  //img[@src="https://storage.googleapis.com/fastwork-asset/product_options/badge_milestone_thai_x3.png"]
${labelCheck}  //div[@class=class="_dp-f _fw-w _mnh-16px"]
${lnkTrend}  ?????????????????????????????????
${labelTrend}  //h1[@class="_fs-900"]
${lnkGraphicAndDesign}  //a[href="/design-graphic"]
${lnkWriteAndTranslate}  //a[@href="/writing-translation"]
#Testdata for register and login
${txtUserName}  paritbutqap
${txtFirstName}  parit
${txtLastName}  butqa
${txtEmailE}  paritbutqa.pp@gmail.com
${txtPassword}  paritbutqa666
${txtPhoneNo}  0947849669
${txtEmail}  paritbutqa.p@gmail.com
${txtGmail}  paaritbutqa.p@gmail.com
@{txtGmailPassword}  paritbutqa.666
${txtEmailWrong}  paritbutqa.p@gmail.con
#Testdata for search
${txtSearch}  game
${txtSearchNotFound}  llumllum

*** Keywords ***

Open Fastwork
    Open Browser  ${urlFastwork}   Chrome
Open Fastwork Search
    Open Browser  ${urlFastworkSearch}   Chrome
Confirm Sign Up
    [Arguments]  ${consent1}  ${consent2}  ${signupButton}
    click button  ${consent1}
    click button  ${consent2}
    click button  ${signupButton}
Search Keykwords
    [Arguments]  ${searchInput}  ${searchText}  ${searchLabel}
    Input Text  ${searchInput}  ${searchText}
    Press Keys  ${searchInput}  ENTER
    Wait Until Element Contains  ${searchLabel}  ${searchText}

#Testcase1
Sign Up With Email Account
    Open Fastwork
    click link  ${btnLogin}
    click link  ${btnSignUp}
    input text  ${inpUserName}  ${txtUserName}
    input text  ${inpFirstName}  ${txtFirstName}
    input text  ${inpLastName}  ${txtLastName}
    input text  ${inpEmail}  ${txtEmailE}
    input text  ${inpPassword}  ${txtPassword}
    input text  ${inpConfPassword}  ${txtPassword}
    input text  ${inpPhoneNo}  ${txtPhoneNo}
    Confirm Sign Up  ${chkboxTCConsent}  ${chkboxPPConsent}  ${btnConfirmSignUp}
    Element should be visible  ${formConfirmEmail}
    Close Browser

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
    Confirm Sign Up  ${chkboxTCConsent}  ${chkboxPPConsent}  ${btnConfirmSignUp}
    Element should be visible  ${errorEmailAlreadyExist}
    Close Browser

Sign Up With Google Account
    Open Fastwork
    click link  ${btnLogin}
    click link  ${btnSignUp}
    click link  ${btnGoogleSignin}
    input text  ${inpGoogleSignup}  ${txtGmail}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${inpGooglePassword}
    input text  ${inpGooglePassword}  @{txtGmailPassword}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${chkboxTCConsent}
    Confirm Sign Up  ${chkboxTCConsent}  ${chkboxPPConsent}  ${btnConfirmGoogleSignUp}
    Sleep  3s
    Wait Until Element Is Visible  ${iBell}
    Close Browser

#Testcase2
Sign In With Email Account
    Open Fastwork
    click link  ${btnLogin}
    input text  ${inpEmailSignin}  ${txtEmail}
    click button  ${btnNextSignIn}
    input text  ${inpPasswordSignIn}  ${txtPassword}
    click button  ${btnSignIn}
    Sleep  3s
    Wait Until Element Is Visible  ${iBell}
    Close Browser

Sign in with Email Account : wrong email
    Open Fastwork
    click link  ${btnLogin}
    input text  ${inpEmailSignin}  ${txtEmailWrong}
    click button  ${btnNextSignIn}
    Element should be visible  ${errorEmailAlreadyExist}
    Close Browser
Sign in with Email account : Wrong password
    Open Fastwork
    click link  ${btnLogin}
    input text  ${inpEmailSignin}  ${txtEmail}
    click button  ${btnNextSignIn}
    input text  ${inpPasswordSignIn}  @{txtGmailPassword}
    click button  ${btnSignIn}
    Element should be visible  ${errorEmailAlreadyExist}
    Close Browser
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
    Close Browser

#Testcase3
Search by typing keyword
    Open Fastwork Search
    Maximize Browser Window
    Search Keykwords  ${inpSearch}  ${txtSearch}  ${labelSearch}
    Wait Until Element Is Visible  ${cardProduct}
Filter professional badge
    click button  ${chkboxProfessional}
    Wait Until Element Is Visible  ${cardProduct}
    click element  ${cardProduct}
    Switch Window  NEW
    Wait Until Element Is Visible  ${labelProfessional}
    Close Window
    Switch Window       MAIN
    click button  ${chkboxProfessional}
Filter ????????????????????????????????? badge
    click button  ${chkbox?????????????????????????????????}
    Wait Until Element Is Visible  ${cardProduct}
    click element  ${cardProduct}
    Switch Window  NEW
    Wait Until Element Is Visible  ${label?????????????????????????????????}
    Close Window
    Switch Window       MAIN
    click button  ${chkbox?????????????????????????????????}
Filter professional badge + ????????????????????????????????? badge
    Search Keykwords  ${inpSearch}  ${txtSearch}  ${labelSearch}
    Wait Until Element Is Visible  ${cardProduct}
    click button  ${chkboxProfessional}
    click button  ${chkbox?????????????????????????????????}
    Wait Until Element Is Visible  ${cardProduct}
    click element  ${cardProduct}
    Switch Window  NEW
    Wait Until Element Is Visible  ${label?????????????????????????????????}
    Wait Until Element Is Visible  ${labelProfessional}
    Close Window
    Switch Window       MAIN
    click button  ${chkbox?????????????????????????????????}
    click button  ${chkboxProfessional}
Search by typing keyword that doesn't exist
    Search Keykwords  ${inpSearch}  ${txtSearchNotFound}  ${labelSearch}
    Wait Until Element Contains  ${labelSearchNotFound}  0
    Close Browser

