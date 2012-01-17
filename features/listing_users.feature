Feature: Listing all users
    In order to see all users are single place
    As a user
    I want to be able to see the list of users

    Scenario: Listing users
        Given there is a user named "Alice"
        And I am on the homepage
        When I follow "Alice"
        Then I should be on the user page for "Alice"
