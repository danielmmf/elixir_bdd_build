Feature: Changing user details

  Scenario: Changing first name to Bob
    Given I register a new user called "Brian"
    When I change their name to Bob
    Then their name should be Bob
    
  Scenario: Changing first name to Charlie
    Given I register a new user called Roberto
    When I change their name to Charlie
    Then their name should be Charlie