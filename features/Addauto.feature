Feature: Automatically assign rooms to proctors
         As a proctor manager
	     So that I can see system generates rooms for proctors automatically  
	     I want to be able to add one or more proctor without fill in Room field  
 

    
    Background: go to add auto proctor
    
    Given the following proctors exist:
    | name                  |   position        | tel          |    email            |    room_id   |
    | Kitinan Boonyeun      |   Staff           | 0990490009   |  thones@gmail.com   |      1       |
     
  
    Given the following rooms exist:
   | id | number        |   build           | 
   | 1  | EN318         |   Engineering     | 
   | 2  | SC205         |   SCBuilding      | 
    
    Given I am on the Proctors home page
    When I follow "Add Proctor"
    Then I should be on the Add proctor page
    And  I fill in "proctor_position" with "Staff"
    And  I fill in "proctor_tel" with "0829929130"
    And  I fill in "proctor_email" with "k@gmail.com"

    
Scenario: add a proctor and automatically generates rooms (Happy path)
    
    When I fill in "proctor_name" with "Tonsak yungme"
    And I press "Save"
    Then I should be on the Proctor show proctor page 
    When I follow "Back"
    Then I should be on the Proctor page
    And I should see "SC205"
    
 

Scenario: can't add a proctor (Sad path)

    When I fill in "proctor_name" with "Kitinan Boonyeun"
    And I press "Save"
    And I should see "Name has already been taken"
    