Feature: edit proctor’s details 
         As a proctor manager 
         So that I can correct proctor's details when something is wrong 
         I want to be able to edit any proctor's details 


Background: proctors have been added to database
  
  Given the following proctors exist:
  
  | name        |   position      | tel          |    email            |
  | Tonsak       |   Professor       | 0990490009   |  thones_aGmail.com  |
    
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page
    When I follow "Edit"
    Then I should be on the Proctor edit page

Scenario: edit a proctor (happy path)
  
   

    When I fill in "proctor_name" with "Ton"
    And I press "Save"
    Then I should be on the Proctor show page
    When I follow "Back"
    Then I should be on the Proctor page
    And I should see "Ton"
    
    
Scenario: can't edit proctor (Sad path)

    When I fill in "proctor_name" with ""
    And I press "Save"
    And I should see "can't be blank"