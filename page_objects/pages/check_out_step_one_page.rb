require_relative '../abstract/abstract_page'

class CheckOutStepOne < AbstractPage

  def url(_page)
    '/checkout-step-one.html'
  end

  # Actions
  def continue_checkout_one(firstname, lastname , postcode)
    first_name_field.set firstname
    password_field.set lastname
    postal_code_field.set postcode
    check_out_button.click
  end
  def cancel_checkout_one
    cancel_button.click
  end

  # Components

  private

  # Elements
  def first_name_field
    browser.text_field(id: 'first-name')
  end

  def last_name_field
    browser.text_field(id: 'last-name')
  end

  def postal_code_field
    browser.text_field(id: 'postal-code')
  end

  def check_out_button
    browser.button(id: 'continue')
  end

  def cancel_button
    browser.button(id: 'cancel')
  end



end
