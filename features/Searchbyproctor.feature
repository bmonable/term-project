Feature: Display proctor and details filtered by proctor’s name 
         As a proctor manager 
         So that I can quickly find proctor ‘s details by name 
         I want to see proctor that match with proctors’ name I filled in

Background: rooms have been added to database
    Given the following proctors exist:
    | name                  |   position        | tel          |    email            |    room_id   |
    | Kitinan Boonyeun      |   Staff           | 0990490009   |  thones@gmail.com   |      1       |
    | Tonsak yungme         |   Staff           | 0829929130   |  k@gmail.com        |      2       |
  
    Given the following rooms exist:
   | id | number        |   build           | 
   | 1  | EN318         |   Engineering     | 
   | 2  | SC205         |   SCBuilding      |
    Given I am on the Proctors home page

Scenario: find room by proctor's name  (Happy path)
    

    When I fill in "searchproctor" with "Kitinan"  
    And I press "Search"
    And I should see "EN318"
    And I should not see "SC205"

Scenario: can't find proctor's name  (Sad path)
    

    When I fill in "searchproctor" with "Somchai"  
    And I press "Search"
    And I should see "There is no proctor stored on database"