Feature: Editing Users
    In order to update users information
    As a user
    I want to be able to see a form to update information.

   Background:
        Given there is a user named "Alice"
        And I am on the homepage
        When I follow "Alice"
        And I follow "Edit Profile"

    Scenario:   Updating a user 
        And I fill in "Name" with "Liza"
        And I press "Update User"
        Then I should see "User has been successfully updated"
        Then I should be on the user page for "Liza"

    Scenario: Updating a user with invalid information
        And I fill in "Name" with ""
        And I press "Update User"
        Then I should see "User cannot be updated"