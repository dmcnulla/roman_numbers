#!/usr/bin/ruby
# Years till 100
require 'optparse'

require_relative 'lib/roman.rb'
require_relative 'lib/arabic.rb'

def convert(arg_string)
	if arg_string.to_i.to_s == arg_string
		a = ArabicNumbers.new()
		a.to_roman(arg_string.to_i)
	else
		r = RomanNumbers.new()
		r.to_arabic(arg_string.upcase)
	end
end

options = {:name => nil, :age => nil}

parser = OptionParser.new do|opts|
	opts.banner = "Usage: years.rb [options]"
	opts.on('-v', '--value value', 'Value') do |value|
		options[:value] = value;
	end

	opts.on('-h', '--help', 'Displays Help') do
		puts opts
		exit
	end
end

parser.parse!

if options[:value] == nil
	print 'Enter Value: '
    options[:value] = gets.chomp
end

original = options[:value]

puts "Coverted #{original} to #{convert(original)}"
