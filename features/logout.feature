Feature: Logout from the application

    As a user, I should be able to logout from the app.

    #* AC1: user should log out from the homepage by clicking the “Log out”  button under the account name.


    # TODO: verify users can logout from the app
    Scenario Outline: Veriy users can logout from the app
      Given I am logged in as <user_type>
      When I click the dropdown( triangle) icon next to the account name
      And I click the "Log out" button
      Then I should be logged out from the app
      And I should be redirected to the login page
      

      Examples:
      | user_type |
      | admin      |
      | user       |

    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.