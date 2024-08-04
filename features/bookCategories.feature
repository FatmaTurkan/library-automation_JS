@lib-03
Feature: Book Categories

    As a user, I want to see 21 book categories, so I can filter my favorite books.

    #* AC1: users should see 21 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry, Thrillers, Young adults           


    # TODO: verify users see 21 book categories
    Scenario Outline: Verify users see 21 book categories
        Given I am logged in as <user_type>
        When I click on the Books tab on the header
        And I click on the dropdown under the Book Categories
        Then I should see the following 21 book categories: <category1>  ???????

        Examples:
            | user_type | category1 |

            | student   | ALL         |
            | admin     | ALL         |


    Scenario Outline: Verify when user selects a category, only the selected category books should display
        Given I am logged in as <user_type>
        When I click on the Books tab on the header
        And I click on the dropdown under the Book Categories
        And I select a specific category from the Book Categories dropdown,
        Then only the selected category books should display in the book grid

        Examples:
            | user_type | category_selected |
        

    #? Should there be more scenarios for this user story? Feel free to add more scenarios.