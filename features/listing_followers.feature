Feature: Listing the followers
    In order to see the list of people following a user
    As a user
    I want to be able to see that list on user's' profile page


    Background:
        Given there is a user named "Alice"
        And there is a user named "Bob"
        And I am on the homepage
        When I follow "Alice"
        And I follow "Follow"

    Scenario: Listing followers
        When I follow "Home"
        And I follow "Bob"
        Then I should see "Alice" within "#followers"