Feature: User can checkout

  Scenario Outline: User can checkout
    Given I login as a standart_user
    And I am on the product list page
    When I add a product to cart
    And I go to the cart page
    When I click on the checkout button
    Then I should see checkout information page
    When I am on the checkout page
    Given I fill in the billing information
      | <First Name> | <Last Name> | <Postal Code> |
    When I am on the checkout information page
    Then I should see the order confirmation page
    Examples:
      | First Name | Last Name | Postal Code |
      | John       | Doe       | 12345       |
      | Jane       | Smith     | 45678       |
      | Michael    | Johnson   | 98765       |
      | Sarah      | Lee       | 23456       |
      | David      | Kim       | 34567       |
      | Emily      | Chen      | 56789       |
      | Jason      | Park      | 67890       |
      | Samantha   | Brown     | 78901       |
      | James      | Wilson    | 89012       |
      | Olivia     | Taylor    | 90123       |
