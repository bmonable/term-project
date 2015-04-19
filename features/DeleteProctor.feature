Feature: delete proctor’s details
           As a proctor manager 
           So that I can remove one or more proctor and details 
           I want to be able to delete one or more proctor form the table

Background: proctors have been added to database
Scenario: delete a proctor (happy path)
  Given the following proctors exist:
  | name        |   position        | tel                  |    email                       |
  | Tonsak       |   Professor       | 0990490009   |  thones_aGmail.com  |
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    When I follow "Delete"
   Then I should be on the Proctor page 
   And I should not see "Tonsak"



Scenario:  no data to delete (sad path)
    Given the following proctors exist:
  | name        |   position      | tel          |    email            |
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    And I should not see "Delete"
