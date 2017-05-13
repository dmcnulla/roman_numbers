Feature: As a user, I want to find out the conversion of an I from roman to arabic so I don't have to think.

Scenario: Converts values < 4
	Given I have a roman number "III"
	When I ask for a coversion to arabic
	Then I receive a "3"
