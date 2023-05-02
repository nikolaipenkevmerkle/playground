require_relative '../../page_objects/pages/login_page'
require_relative '../../page_objects/pages/check_out_step_one_page'
require_relative '../../page_objects/pages/cart_page'
require_relative '../../page_objects/pages/checkout_step_two'
require_relative '../../page_objects/pages/checkout_complete'

Given('I am on the checkout page') do
  expect(@browser.url).to include '/checkout-step-one.html'
end

When('I click on the checkout button') do
  @cart_page = CartPage.new(@browser)
  @cart_page.click_on_checkout_button
end

Then('I should see checkout information page') do
  @checkout_step_one_page = CheckOutStepOnePage.new(@browser)
  expect(@browser.url).to include '/checkout-step-one.html'
end

Given('I fill in the billing information') do |table|
  firstname = table.to_hash.flatten.first
  lastname = table.to_hash.flatten.last
  postcode = table.to_hash.flatten.last
  @checkout_step_one_page.continue_checkout_one(firstname, lastname, postcode)
end

Given('I am on the checkout information page') do
  expect(@browser.url).to include '/checkout-step-two.html'
  @checkout_step_two = CheckoutStepTwo.new(@browser)
  @checkout_step_two.finish_checkout
end


Then('I should see the order confirmation page') do
  expect(@browser.url).to include '/checkout-complete.html'
  @checkout_complete_page = CheckoutComplete.new(@browser)
  @checkout_complete_page.back_home
end