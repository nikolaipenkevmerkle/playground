require_relative '../abstract/abstract_page'

class LoginPage < AbstractPage

  def url(_page)
    ''
  end

  def login_logo_shown?
    login_logo.present?
  end
  
  # Actions
  

  def login(username, password)
    username_field.set username
    password_field.set password
    login_button.click
  end

  # Components


  private

  # Elements

  def username_field
    browser.text_field(id: 'user-name')
  end

  def password_field
    browser.text_field(id: 'password')
  end

  def login_button
    browser.button(id: 'login-button')
  end

  def login_logo
    browser.div(class: 'login_logo')
  end
end
