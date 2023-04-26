# frozen_string_literal: true

require_relative '../../page_objects/pages/login_page'
require_relative '../../page_objects/pages/product_page'

Given('I am a registered user on site') do
  @login_page = LoginPage.new(browser)
  @login_page.visit
end

When('I fill in my credentials') do |table|
  user_name = table.to_hash.flatten.first
  password = table.to_hash.flatten.last
  @login_page.login(user_name, password)
end

Then('I should see products on the site') do |table|
  expect(ProductPage.new(browser).list_shown?.to_s).to eq table.to_hash.flatten.first
end