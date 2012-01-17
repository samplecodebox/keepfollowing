Feature: Deleting User
    In order to unsubscribe from the application
    As a user
    I want be able to delete my user profile

    Background:
        Given there is a user named "Alice"
        Given there is a user named "Bob"
        And I am on the homepage
        When I follow "Alice"

    Scenario: Deleting a user
        When I follow "Delete Profile"
        Then I should see "User has been successfully deleted"
        And I should be on the homepage

    Scenario: Delete followees and followers of a user when user is deleted
        When I follow "Follow"
        And I follow "Home"
        And I follow "Bob"
        And I follow "Delete Profile"
        And I follow "Alice"
        Then I should not see "Bob"
