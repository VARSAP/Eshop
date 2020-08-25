*** Settings ***
Library    SeleniumLibrary 
   
*** Variables ***
${Register}    //a[@class='ico-register'] 
${FirstName}    //input[@id='FirstName']
${LastName}    //input[@id='LastName']
${Email}    //input[@id='Email']
${Password}    //input[@id='Password']
${ConfirmPassword}    //input[@id='ConfirmPassword']
${Registerbutton}    //input[@id='register-button']
${Login}    //input[contains(@class,'button-1 login-button')]
${Loginpage}    //a[@class='ico-login']
${Books}     (//a[@href='/books'])[1]
${computer}    (//a[@href='/computers'])[1]
${electronics}    (//a[@href='/electronics'])[1]
${shoes}    (//a[@href='/apparel-shoes'])[1]
${digitaldownload}    (//a[@href='/digital-downloads'])[1]
${jewelry}    (//a[@href='/jewelry'])[1]
${giftcards}    (//a[@href='/gift-cards'])[1]

${Categories}     //strong[text()='Categories']
${Manufacturers}    //strong[text()='Manufacturers']
${news}    //strong[text()='Newsletter']
${poll}    //strong[text()='Community poll']
${tags}    //strong[text()='Popular tags']
${Freatureproducts}    //strong[text()='Featured products']

${BOOKCATAGORIES}        (//a[@href='/books'])[3]
${PROPERTIES}        //select[@id='products-orderby']
${HIGHPRICE}    //option[@value='http://demowebshop.tricentis.com/books?orderby=11']
${PRODUCT1}    (//input[@class='button-2 product-box-add-to-cart-button'])[1]
${PRODUCT2}   (//input[@class='button-2 product-box-add-to-cart-button'])[2]
${CART}    (//a[@class='ico-cart'])[1]
${BOOKSCAT}    (//a[@href='/books'])[1]
*** Test Cases ***
Registeration 
    Open Browser    http://demowebshop.tricentis.com/     chrome
    Wait Until Page Contains Element    ${Register}       
    Click Element    ${Register}    
    Select Radio Button       Gender    F 
    Input Text    ${FirstName}    qwert
    Input Text    ${LastName}    asdf       
    Input Text    ${Email}     qwer56@gmail.com
    Input Password    ${Password}     password12345
    Input Password    ${ConfirmPassword}    password12345       
    Click Button    ${Registerbutton}        
    Close Browser
Login 
     Open Browser    http://demowebshop.tricentis.com/     chrome 
     Wait Until Page Contains Element    ${Register}
     Click Element    ${Loginpage}      
     Wait Until Page Contains    Welcome, Please Sign In!    
     Input Text    ${Email}     qwer56@gmail.com    
     Input Password    ${Password}    password12345    
     Click Button    ${Login} 
 

Validationy the home page 
     Open Browser    http://demowebshop.tricentis.com/     chrome 
     Wait Until Page Contains Element    ${Register}
     Click Element    ${Loginpage}      
     Wait Until Page Contains    Welcome, Please Sign In!    
     Input Text    ${Email}     qwer56@gmail.com    
     Input Password    ${Password}    password12345    
     Click Button    ${Login}
     Get WebElement    ${Books}
    Get WebElements    ${computer}
    Get WebElements    ${electronics}
    Get WebElements    ${shoes}
    Get WebElements    ${digitaldownload}
    Get WebElements    ${jewelry}
    Get WebElements     ${giftcards}
       Close Browser
 Verification Of The Home Page
    Open Browser    http://demowebshop.tricentis.com/     chrome 
     Wait Until Page Contains Element    ${Register}
   
     Element Text Should Be    ${Categories}       CATEGORIES    
     Element Text Should Be    ${Manufacturers}    MANUFACTURERS    
     Element Text Should Be    ${news}             NEWSLETTER    
     Element Text Should Be    ${poll}             COMMUNITY POLL   
     Element Text Should Be    ${tags}              POPULAR TAGS   
     Element Text Should Be    ${Freatureproducts}      FEATURED PRODUCTS  
       
     Close Browser   
Add to Cart 
    [Documentation]        Added two most expensive products from the shoping website to the cart 
            Open Browser    http://demowebshop.tricentis.com/     chrome 
            Maximize Browser Window
             Wait Until Page Contains Element    ${Register}
          Click Element    ${BOOKCATAGORIES}  
         Click Element   ${HIGHPRICE}
         
         Click Button    ${PRODUCT1} 
        
        Wait Until Page Contains Element    ${PRODUCT2} 
         Click Element    ${CART}   
        Click Element    ${BOOKSCAT} 
        Click Element   ${HIGHPRICE} 
        Wait Until Page Contains Element    ${PRODUCT2}   
         Click Button    ${PRODUCT2}   
                 Click Element    ${CART}      
         
         
     
     