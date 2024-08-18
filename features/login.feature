@lib-01
Feature: Login to the application
  As a user, I want to login so that I can access the app's main features.

  #* AC1: users should be able to log in with valid credentials and launch to the homepage.
  #* AC2: users should see a "Sorry, Wrong Email or Password" error pop-up message if any users try to log in with invalid credentials.
  #* AC3: users should see a “This field is required.” error pop-up message when they attempt to log in without any credentials.

  Background:
    Given user is already on the login page
    
  @lib-01-01
  Scenario Outline: Verify users can login with valid credentials
    When user enters valid username "<user-type>" 
    And user enters valid password "<user-type>" 
    And user clicks the login button
    Then user login succussfully to the homepage
    Examples:
      | user-type |
      | admin     |
      | student   |


  # TODO: Verify users can not login with invalid credentials
  @lib-01-02
  Scenario Outline: Verify users cannot login with invalid email address
    When user enters invalid email address '<invalid-email>' in the Email address field
    And user enters valid password '<user-type>' in the Password field
    And user clicks the login button
    Then user sees a "Sorry, Wrong Email or Password" error pop-up message
    Examples:
      | invalid-email | user-type |

  @lib-01-03
  Scenario Outline: Verify user cannot login with invalid password
    When user enters valid email address '<user-type>' in the Email address field
    And user enters invalid password '<invalid-password>' in the Password field
    And user clicks the login button
    Then user should see a "Sorry, Wrong Email or Password" error pop-up message
    Examples:
      | user-type | invalid-password |

  @lib-01-04
  Scenario Outline: Verify users cannot login with invalid email and password
    When user enters invalid email address "<invalid-email>" in the Email address field
    And user enters invalid password "<invalid-password>" in the Password field
    And user clicks the login button
    Then user sees a "Sorry, Wrong Email or Password" error pop-up message
    Examples:
      | invalid-email   | invalid-password |
      | library@student | password123         |
      | library@cydeo   | libraryPassword  |

  # TODO: Verify users are not allowed to login without any credentials
  @lib-01-05
  Scenario Outline: Verify users are not allowed to login without any credentials
    When user clicks the login button
    Then user sees a "This field is required." error pop-up message

  @lib-01-06
  Scenario Outline: Verify users are not allowed to login without entring a valid password
    When user enters a valid email address '<user-type>' in the Email address field
    And user clicks the login button without entering a valid password
    Then user sees a "This field is required." error pop-up message  ????
    #(OR  "Error: Please enter a valid password" error pop-up message )
    Examples:



#? Should there be more scenarios for this user story? Feel free to add more scenarios.


