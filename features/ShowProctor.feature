Feature: Display proctor’s details 
         As a proctor manager 
         So that I can see all the proctor’s details and manage them 
         I want to be able to manage any proctor's details


Background: proctors have been added to database


Scenario: show all proctor (Happy path)
    
  Given the following proctors exist:
  | name        |   position      | tel          |    email            |    room_id                       |
  | Tonsak       |   Professor       | 0990490009   |  thones_aGmail.com  | 2 |
  | migi         |  Staff      | 09813231     |  thond@gmail.com      | 3 |
    
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    And I should see "Tonsak"
    And I should see "migi"

Scenario: proctor table is empty (Sad path)
  Given the following proctors exist:
   
  | name        | position      | tel          |    email           |
 
  Given I am on the Proctors home page
  When I follow "Proctor"
  Then I should be on the Proctor page
  And I should see "There is no proctor stored on"