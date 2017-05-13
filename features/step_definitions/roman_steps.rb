Given(/^I have a roman number "([^"]*)"$/) do | roman |
	@value = roman
	@converter = RomanNumbers.new()
end

When(/^I ask for a coversion to arabic$/) do
	@converted_value = @converter.to_arabic(@value)
end

Then(/^I receive a "([^"]*)"$/) do | expected_value |
	expect(@converted_value).to eq(expected_value.to_i)
end
