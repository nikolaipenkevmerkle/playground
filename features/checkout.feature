Feature: User can checkout

  Scenario Outline: User can checkout
    When I am on the checkout page
    Given I fill in the following <First Name>, <Last Name>, <Postal Code>
    When I click on the checkout button
    Then I should see checkout information page
    Examples:
    | First Name | Last Name | Postal Code |
    | Doe | Doe | 12345 |
    | John | John | 12345 |
    | John | John | 12345 |
    | John | John | 12345 |
    | John | John | 12345 |