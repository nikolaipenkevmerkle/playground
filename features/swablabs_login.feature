Feature: Registered user can see products on site swablabs.com

  Scenario Outline: Login on the swablabs website
    Given I am a registered user on site
    When I fill in my credentials
      | <username> | <password> |
    Then I should see products on the site
      | <Products_list> |
    Examples:
      | username                | password     | Products_list |
      | standard_user           | secret_sauce | true          |
      | locked_out_user         | secret_sauce | false         |
      | problem_user            | secret_sauce | true          |
      | performance_glitch_user | secret_sauce | true          |