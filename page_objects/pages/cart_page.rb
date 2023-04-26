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

  # Actions


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



end
