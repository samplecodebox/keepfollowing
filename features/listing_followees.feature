Feature: Listing the followees
    In order to see the list of people a user is following
    As a user
    I want to be able to see that list on user's profile page


    Background:
        Given there is a user named "Alice"
        And there is a user named "Bob"
        And I am on the homepage
        When I follow "Alice"
        And I follow "Follow"

    Scenario: Listing followers
        Then I should see "Bob" within "#followees"
