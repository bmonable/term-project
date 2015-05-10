Feature: Display list of time and proctors filtered by room 
           As a proctor manager 
           So that I can quickly find the time and proctors for that room and planning to rearrange it 
           I want see all the details about a room during exam period



Background: rooms have been added to database
   Given the following rooms exist:
  | number        |   build      | date          | time               | proctor1          | proctor2     |
  | c1            |   T          | 0990490009    |  thones_aGmail.com  | Kiti Boon      | Haha Lol     |
  | c2             |   K          | 09813231     |  thond@gmail.com   | June July       | Jan Feb     |
    
    Given I am on the Proctors home page

Scenario: find room by room  (Happy path)
    

    When I fill in "search" with "c1"  
    And I press "Search"
    And I should see "c1"
    And I should not see "c2"

Scenario: can't find room (Sad path)
    

    When I fill in "search" with "c3"  
    And I press "Search"
    And I should see "There is no room stored on database"

