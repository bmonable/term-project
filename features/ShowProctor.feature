Feature: Display proctor’s details 
         As a proctor manager 
         So that I can see all the proctor’s details and manage them 
         I want to be able to manage any proctor's details


Background: proctors have been added to database


Scenario: show all proctor (Happy path)
    
    Given the following proctors exist:
    | name                  |   position        | tel          |    email            |    room_id   |
    | Kitinan Boonyeun      |   Staff           | 0990490009   |  thones@gmail.com   |      1       |
    | Tonsak yungme         |   Staff           | 0829929130   |  k@gmail.com        |      2       |
    
  
    Given the following rooms exist:
   | id | number        |   build           | 
   | 1  | EN318         |   Engineering     | 
   | 2  | SC205         |   SCBuilding      |
    
    Given I am on the Proctors home page
    And I should see "Kitinan Boonyeun"
    And I should see "Tonsak yungme"

Scenario: proctor table is empty (Sad path)
  Given the following proctors exist:
   | name                  |   position        | tel          |    email            |    room_id   |
 
  Given I am on the Proctors home page
  When I follow "Proctor"
  Then I should be on the Proctor page
  And I should see "There is no proctor stored on database"