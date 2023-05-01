require_relative '../../page_objects/pages/product_page'
require_relative '../../page_objects/pages/login_page'
require_relative '../../page_objects/pages/cart_page'

And('I login as a standart_user') do
  @login_page = LoginPage.new(browser)
  @login_page.visit
  @login_page.login('standard_user', 'secret_sauce')
end

Given('I am on the product list page') do
  @product_page = ProductPage.new(browser)
  expect(@product_page.list_shown?.to_s).to eq 'true'
end

When('I add a product to cart') do
  @product_page.add_to_cart
end

Then('I see the item added to the cart') do
  expect(ProductPage.new(browser).shopping_cart_badge_shown?.to_s).to eq 'true'
end

Then('I go to the cart page') do
  @product_page.click_on_shopping_cart_link
end

Then('I see the item in the cart') do
  @cart_page = CartPage.new(browser)
  expect(@cart_page.invenroty_item_name_shown?.to_s).to eq 'true'
end

