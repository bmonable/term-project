Feature: Display list of proctors filtered by room 
         As a proctor manager 
         So that I can quickly find proctors for that room and planning to rearrange it 
         I want to see all proctors that in charge the room’s number in filled in 
 
Background: rooms have been added to database
    Given the following proctors exist:
    | name                  |   position        | tel          |    email            |    room_id   |
    | Kitinan Boonyeun      |   Staff           | 0990490009   |  thones@gmail.com   |      1       |
    | Tonsak yungme         |   Staff           | 0829929130   |  k@gmail.com        |      2       |
    | Nachathorn Sawet      |   Staff           | 0870013352   |  baimon@gmail.com   |      1       |
  
    Given the following rooms exist:
   | id | number        |   build           | 
   | 1  | EN318         |   Engineering     | 
   | 2  | SC205         |   SCBuilding      |
    
    Given I am on the Proctors home page

Scenario: find room by room  (Happy path)
    

    When I fill in "searchproctor" with "EN318"  
    And I press "Search"
    And I should see "Kitinan Boonyeun"
    And I should see "Nachathorn Sawet"
    And I should not see "Tonsak yungme"

Scenario: can't find room (Sad path)
    

    When I fill in "searchproctor" with "LC123"  
    And I press "Search"
    And I should see "There is no proctor stored on database"

