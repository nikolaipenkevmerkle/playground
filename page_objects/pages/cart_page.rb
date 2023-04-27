require_relative '../abstract/abstract_page'

class CartPage < AbstractPage

  def url(_page)
    '/cart.html'
  end

  def cart_list_shown?
    cart_list.present?
  end
  def invenroty_item_name_shown?
    inventory_item_name.present?
  end
  def continue_shopping_button_shown?
    continue_shopping_button.present?
  end
  def checkout_button_shown?
    checkout_button.present?
  end

  # Actions
  def click_on_continue_shopping_button
    continue_shopping_button.click
  end
  def click_on_checkout_button
    checkout_button.click
  end

  # Components

  private

  # Elements
  def cart_list
    browser.div(class: 'cart_list')
  end
  def inventory_item_name
    browser.div(class: 'inventory_item_name')
  end
  def cart_item_label
    browser.div(class: 'cart_item_label')
  end
  def cart_quantity
    browser.div(class: 'cart_quantity')
  end
  def continue_shopping_button
    browser.button(id: 'continue-shopping')
  end
  def checkout_button
    browser.button(id: 'checkout')
  end


end
