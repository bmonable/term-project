Feature: add proctor’s details 
         As a proctor manager 
         So that I can create one or more proctor and details 
         I want to be able to add one or more proctor into the table
    
    Background: go to add proctor
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    When I follow "Add Proctor"
    Then I should be on the Add proctor page
    
Scenario: add a proctor (Happy path)
    
    When I fill in "proctor_name" with "Tonsak"
    And  I fill in "proctor_position" with "Staff"
    And  I fill in "proctor_tel" with "087"
    And  I fill in "proctor_email" with "k@gmail.com"
    And  I fill in "proctor_room_id" with "2"
    And I press "Save"
#    Then I should be on the Proctor show page
#    When I follow "Back"
    Then I should be on the Proctor page
    And I should see "Tonsak"
    
 

Scenario: can't add a proctor (Sad path)
    
    When I fill in "proctor_name" with ""
    And  I fill in "proctor_position" with ""
    And  I fill in "proctor_tel" with ""
    And  I fill in "proctor_email" with ""
    And I press "Save"
    And I should see "can't be blank"
    