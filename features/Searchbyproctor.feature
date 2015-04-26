Feature: Display list of rooms and time filtered by proctor’s name 
           As a proctor manager 
           So that I can quickly find all rooms with the same proctor 
           I want to see all rooms that one proctor takes charge 



Background: rooms have been added to database
   Given the following rooms exist:
  | number        |   build      | date          | time               | proctor1          | proctor2     |
  | c1            |   T          | 0990490009    |  thones_aGmail.com  | Kiti Boon      | Haha Lol     |
  | c2             |   K          | 09813231     |  thond@gmail.com   | June July       | Jan Feb     |
    
    Given I am on the Proctors home page

Scenario: find room by proctor's name  (Happy path)
    

    When I fill in "search" with "Kiti"  
    And I press "Search By Proctor"
    And I should see "c1"
    And I should not see "c2"

Scenario: can't find room (Sad path)
    

    When I fill in "search" with "Somchai"  
    And I press "Search By Proctor"
    And I should see "There is no room stored on database"