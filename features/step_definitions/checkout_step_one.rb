require_relative '../page/cart_page'
require_relative '../page/checkout_step_one_page'
require_relative '../page/login_page'

Given('I am on the checkout page') do
  expect(@browser.url).to include '/checkout-step-one.html'
end

When('I click on the checkout button') do
  @cart_page = CartPage.new(@browser)
  @cart_page = @browser.check_out_button
end

Then('I should see checkout information page') do
  @checkout_step_one_page = CheckOutStepOnePage.new(@browser)
  expect(@browser.url).to include '/checkout-step-one.html'

end

Given('I fill in the following (.*), (.*), (.*)') do |table|
  firstname = table.to_hash.flatten.first
  lastname = table.to_hash.flatten.last
  postcode = table.to_hash.flatten.last
  @checkout_step_one_page.continue_checkout_one(firstname, lastname, postcode)
end