require_relative '../../helpers/browser_helper'
require_relative '../../page_objects/pages/product_page'
require_relative '../../page_objects/pages/login_page'
require_relative '../../page_objects/pages/cart_page'
require_relative '../../page_objects/pages/check_out_step_one_page'

include Raider::BrowserHelper

Before do
  new_browser
end

After do |scenario|
  browser.screenshot.save("allure-results/screenshots/#{scenario.name}.png")
  Raider::AllureHelper.add_screenshot(scenario.name)
  browser.quit
end
