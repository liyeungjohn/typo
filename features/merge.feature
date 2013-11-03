Feature: Merge Articles
  As a blog administrator
  In order to organize the blog
  I want to be able to merge articles

  Background:
    Given a blog with two articles is set up
    And I am logged into the admin panel

  Scenario: Merged articles contain text of both previous articles 
    
    Given I am on the edit article page for "1"
    When I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Articles merged!"
    When I go to the home page 
    Then I should see "Article 1"
    When I follow "Article1"
    Then I should see "Article Content1"
    And I should see "Article Content2"
