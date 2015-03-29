Feature: User can manually add proctor


Scenario: add a proctor
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    When I follow "Add Proctor"
    Then I should be on the Add proctor page
    When I fill in "Name" with "Tonsak"
    And I press "Save"
    Then I should be on the Proctor show page
    When I follow "Back"
    Then I should be on the Proctor page
    And I should see "Tonsak"
    
 
