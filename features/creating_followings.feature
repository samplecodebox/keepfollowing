Feature: Creating followings
    In order to follow a person(user)
    As a user
    I want to be able to just be on the user page and do that

    Scenario: Create following (Follow user)
        Given there is a user named "Alice"
        And there is a user named "Bob"
        And I am on the homepage
        When I follow "Alice"
        And I follow "Follow"
        Then I should see "You are following Bob"
        And I should not see "Follow"
        And I should see "Bob" within "#followees"
        