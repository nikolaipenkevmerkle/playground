Feature: User can checkout

  Scenario Outline: User can checkout
    When I am on the checkout page
    Given I fill in the following <First Name>, <Last Name>, <Postal Code>
    When I click on the checkout button
    Then I should see checkout information page
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
