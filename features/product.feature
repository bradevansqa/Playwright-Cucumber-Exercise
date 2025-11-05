Feature: Product Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  # Validate Price sorting using Scenario Outline with a datatable
  Scenario Outline: Validate product sort by price <sort>
    When I login as "standard_user"
    And I sort products by "<sort>"
    Then all product prices should be sorted "<sort>"

  Examples:
    | sort                |
    | Price (low to high) |
    | Price (high to low) |
