Feature: edit proctors after add one or more proctor
         As a proctor manager 
         So that I can change proctors’ details and  room that proctors are in charge 
         I want to be able to edit details and room 



    Background: proctors have been added to database
  
    Given the following proctors exist:
    | name                  |   position        | tel          |    email            |    room_id   |
    | Kitinan Boonyeun      |   Staff           | 0990490009   |  thones@gmail.com   |      1       |
    
    
    Given the following rooms exist:
   | id | number        |   build           | 
   | 1  | EN318         |   Engineering     | 
   | 2  | SC205         |   SCBuilding      |
  
    Given I am on the Proctors home page
    When I follow "Edit"
    Then I should be on the Proctor edit page

Scenario: edit a proctor (happy path)
  
   
    When I fill in "proctor_name" with "Tonsak yungme"
    And I select "SC205" from "proctor_room_id"
    And I press "Save"
    Then I should be on the Proctor show page
    When I follow "Back"
    Then I should be on the Proctor page
    And I should see "Tonsak yungme"
    And I should see "SC205"
    
    
Scenario: can't edit proctor (Sad path)

    When I fill in "proctor_name" with ""
    And I press "Save"
    And I should see "can't be blank"