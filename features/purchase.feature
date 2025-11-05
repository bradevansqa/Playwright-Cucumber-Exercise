Feature: Purchase Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  Scenario: Validate successful purchase text
    Then I will login as 'standard_user'
    Then I will add the backpack to the cart
    And I click on the shopping cart icon
    And I click on the Checkout button
    And I enter checkout information "Ally" "Test" "28277"
    And I click on Continue
    And I click on Finish
    Then I should see the confirmation message "Thank you for your order!"
