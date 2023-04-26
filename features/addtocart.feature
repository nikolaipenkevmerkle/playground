Feature: Add to cart

  Scenario: User can add item to cart from product list page
    Given I am a registered user on site
    And I login as a standart_user
    Given I am on the product list page
    When I click on the add to cart button
    Then I should see the item added to the cart
    Then I open the cart
    Then I should see the item in the cart