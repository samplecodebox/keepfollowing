Feature: Deleting Following
    In order to stop following a person
    As a user
    I want to be able to just remove the following for the user page

    Background:
        Given there is a user named "Alice"
        And there is a user named "Bob"
        And I am on the homepage
        When I follow "Alice"
        And I follow "Follow"

    Scenario: Unfollow other user
        When I follow "Unfollow"
        Then I should see "You no more follow Bob"
        And I should not see "Unfollow"

