Feature: Add and edit blogging Categories

Background:
	Given the blog is set up
	And I am logged into the admin panel
        And I am on the categories editing page

Scenario: Creating new Categories
	Given I fill in "Name" with "name1"
	And I fill in "Keywords" with "keywords1"
        And I fill in "Permalink" with "permalink1"
        And I fill in "Description" with "description1"
	When I press "Save"
	Then I should be on the categories editing page
        And I should see "Category was successfully saved."
	And I should see "name1"
	And I should see "description1"
	And I should see "permalink1"
	And I should see "keywords1"


Scenario: Editing existing categories
	When I follow "General"
	Given I fill in "Name" with "name2"
	And I fill in "Keywords" with "keywords2"
        And I fill in "Permalink" with "permalink2"
        And I fill in "Description" with "description2"
	When I press "Save"
	Then I should be on the categories editing page
        And I should see "Category was successfully saved."
	And I should see "name2"
	And I should see "description2"
	And I should see "permalink2"
	And I should see "keywords2"
	And I should not see "General"
	And I should not see "general"


