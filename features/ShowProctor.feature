Feature: User can see all proctor


Scenario: show all proctor
    
    Given I am on the Proctors home page
    When I follow "Proctor"
    Then I should be on the Proctor page  