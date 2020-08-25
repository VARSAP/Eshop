*** Variables ***

${REGISTER}           //a[@class='ico-register']
${BOOKCATAGORIES}     (//a[@href='/books'])[3]
${PROPERTIES}         //select[@id='products-orderby']
${HIGHPRICE}          //option[@value='http://demowebshop.tricentis.com/books?orderby=11']
${PRODUCT1}           (//input[@class='button-2 product-box-add-to-cart-button'])[1]
${PRODUCT2}           (//input[@class='button-2 product-box-add-to-cart-button'])[2]
${CART}               (//a[@class='ico-cart'])[1]
${BOOKSCAT}           (//a[@href='/books'])[1]