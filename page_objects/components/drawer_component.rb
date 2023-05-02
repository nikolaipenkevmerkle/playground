require_relative '../abstract/abstract_component'



class DrawerComponent < AbstractComponent

  # Actions


  def click_on_all_items
    all_items.click
  end

  def click_on_about
    about.click
  end

  def click_on_logout
    logout.click
  end

  def click_on_reset_app_state
    reset_app_state.click
  end


  # Components

  private

  # Elements
  def all_items
    browser.element(id: 'inventory_sidebar_link')
  end

  def about
    browser.element(id: 'about_sidebar_link')
  end

  def logout
    browser.element(id: 'logout_sidebar_link')
  end

  def reset_app_state
    browser.element(id: 'reset_sidebar_link')
  end


end