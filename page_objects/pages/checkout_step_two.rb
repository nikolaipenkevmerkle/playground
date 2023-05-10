require_relative '../abstract/abstract_page'

class CheckoutStepTwo < AbstractPage

  def url(_page)
    '/checkout-step-two.html'
  end

  # Actions
  def finish_checkout
    finish_button.click
  end
  # Components

  private
  def finish_button
    browser.button(id: 'finish')
  end
  # Elements



end
