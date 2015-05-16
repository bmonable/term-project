Feature: delete proctor’s details 
           As a proctor manager 
           So that I can remove one or more proctor and details 
           I want to be able to delete one or more proctor form the table 


    Background: proctors have been added to database

Scenario: delete a proctor (happy path)
    
    Given the following proctors exist:
    | name                  |   position        | tel          |    email            |    room_id   |
    | Kitinan Boonyeun      |   Staff           | 0990490009   |  thones@gmail.com   |      1       |


    Given the following rooms exist:
   | id | number        |   build           | 
   | 1  | EN318         |   Engineering     | 
   | 2  | SC205         |   SCBuilding      |

    Given I am on the Proctors home page
    When I follow "Delete"
    Then I should be on the Proctor page 
    And I should not see "Kitinan Boonyeun"



Scenario:  no data to delete (sad path)
   
    Given the following proctors exist:
    | name        |   position      | tel          |    email            | room_id |
    
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    And I should not see "Delete"
