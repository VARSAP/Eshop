*** Settings ***
Library    SeleniumLibrary    
Resource    ../Object Repository/Eshop_Variables.robot
Resource    ../TestData/Eshop_TestData.robot
*** Keywords ***

Add to Cart
                      [Documentation]                                                         Added two most expensive products from the shoping website to the cart.
                      Open Browser                                                            ${URL}                                                                     chrome
                      Maximize Browser Window
                      Wait Until Page Contains Element                                        ${REGISTER}
                      Click Element                                                           ${BOOKCATAGORIES}
                      Click Element                                                           ${HIGHPRICE}
                     
                      Click Button                                                            ${PRODUCT1}
                      Click Element                                                           ${CART}
                      Click Element                                                           ${BOOKSCAT}
                      Click Element                                                           ${HIGHPRICE}
                      Wait Until Page Contains Element                                        ${PRODUCT2}
                      Click Button                                                            ${PRODUCT2}
                      Click Element                                                           ${BOOKSCAT}
                      Click Element                                                           ${CART}