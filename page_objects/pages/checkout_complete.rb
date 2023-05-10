require_relative '../abstract/abstract_page'

class CheckoutComplete < AbstractPage

  def url(_page)
    '/checkout-complete.html'
  end

  # Actions
  def back_home
    back_to_products_button.present?
  end
  # Components

  private

  # Elements
  def back_to_products_button
    browser.element(id: 'back-to-products')
  end


end
