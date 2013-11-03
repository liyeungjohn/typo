Feature: Merge Articles
  As a blog administrator
  In order to organize the blog
  I want to be able to merge articles

  Background:
    Given a blog with two articles is set up
    And I am not logged into the admin panel

  Scenario: Non-admin cannot merge articles.
    
    Given I am on the edit article page for "1"
    Then I should not see "Merge Articles"
  
