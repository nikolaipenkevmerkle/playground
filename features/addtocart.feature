Feature: Add to cart

  Scenario: Cart amount indicator is updated when adding product to cart from product list page
    Given I login as a standart_user
    And I am on the product list page
    When I add a product to cart
    Then I see the item added to the cart

  Scenario: User can add item to cart from product list page
    Given I login as a standart_user
    And I am on the product list page
    When I add a product to cart
    And I go to the cart page
    Then I see the item added to the cart