Feature: JSON
	JSON TEST 

@get
Scenario: Simple Get
    Given that I want to recover a post
    When I call a get method with a existent id
    Then the response status will be 200 with a corresponding body
