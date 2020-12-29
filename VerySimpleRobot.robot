*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC001_search_lower_priceOfSumsung_S10_from_google
    Open browser  https://www.google.com/  Chrome
    Input text  name=q  s10 price
    set selenium speed  0.3
    Click button  name=btnK
    Page should contain  th.priceprice.com
    Click Element  //*[contains(text(), "Samsung Galaxy S10 เช็คราคาล่าสุด ราคาถูก สเปค | Priceprice ...")]
    Page should contain  อันดับราคาถูกสุด
    ${s10_price}  Get text  //span[@class='price']
    Log to console  s10 ถูกสุด ${s10_price}
    Close browser
