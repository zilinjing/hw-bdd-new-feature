Feature: Create and Delete Movies
  As a movie database administrator
  So that I can manage the movie collection
  I want to create and delete movies

Background: movies exist in database
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |

Scenario: create a new movie with director
  When I go to the new movie page
  And I fill in "Title" with "The Empire Strikes Back"
  And I select "PG" from "Rating"
  And I fill in "Director" with "George Lucas"
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "The Empire Strikes Back was successfully created"

Scenario: destroy a movie
  Given I am on the details page for "Alien"
  When I follow "Delete"
  Then I should be on the home page
  And I should see "Movie 'Alien' deleted"