require_relative '../abstract/abstract_page'

class ProductPage < AbstractPage

  def url(_page)
    '/inventory.html'
  end

  def list_shown?
    inventory_list.present?
  end

  def price_shown?
    pricebar.present?
  end

  def add_to_cart
    add_to_cart_button.present?
    add_to_cart_button.click
  end

  def shopping_cart_badge_shown?
    shopping_cart_badge.present?
  end




  # Actions
  def click_on_shopping_cart_link
    shopping_cart_link.click
  end

  # Components

  private

  # Elements
  def inventory_list
    browser.div(class: 'inventory_list')
  end
  def shopping_cart_link
    browser.element(id: 'shopping_cart_container')
  end
  def shopping_cart_badge
    browser.span(class: 'shopping_cart_badge')
  end

  def inventory_item
    browser.div(class: 'inventory_item')
  end

  def inventory_item_img
    browser.div(class: 'inventory_item_img')
  end

  def inventory_item_description
    browser.div(class: 'inventory_item_description')
  end

  def invetory_item_price
    browser.div(class: 'inventory_item_price')
  end

  def add_to_cart_button
    browser.button(id: 'add-to-cart-sauce-labs-backpack')
  end

  def pricebar
    browser.div(class: 'pricebar')
  end


end
