Feature: Creating Users
    In order to have users for the app
    As a app-user
    I want to be able to create user

    Background:
        Given I am on the homepage
        When I follow "New User"

    Scenario: Creating a user
        When I fill in "Name" with "Alice"
        And I press "Create User"
        Then I should see "User has been successfully created"
        And I should be on the user page for "Alice"
        And I should see "Welcome Alice"

    Scenario: Creating a user without name
        When I press "Create User"
        Then I should see "User has not been created"
        And I should see "Name can't be blank"

    