@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

    #* AC: students should see 2 modules: Books, Borrowing Books


    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
    Scenario Outline: Verify students can see 2 main modules (Books and Borrowing Books)
        Given a student is logged in
        When student landed on the Book management page
        Then they should see "<module_name>" in the navigation bar
        Examples:
            | module_name          |
            | Books                |
            | Borrowing Books      |

  

    Scenario Outline: Verify students can click on Books module
        Given a student is logged in
        When student clicks on "Books" in the navigation bar
        And the student still should be on the Book management page
        And the student should be able to see Book Categories header under the Book Management
        And the student should be able to see a Search box on the right hand side of the books grid

    Scenario Outline: Verify students can click on Borrowing Books module
        Given a student is logged in
        When student clicks on "Borrowing Books" in the navigation bar
        And the header should be "Borrowing Books"
        And the account name on the top right hand side should match with name in the "Users" box
   
    #? Should there be more scenarios for this user story? feel free to add more scenarios

