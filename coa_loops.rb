################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Loops
# Learning Objective: Introduce loops and create a reference for students.
#
################################################################################

# Data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

provinces = {
				"Australian Capital Territory" => "ACT",
				"New South Wales" => "NSW",
				"Northern Territory" => "NT",
				"Queensland" => "QLD",
				"South Australia" => "SA",
				"Tasmania" => "TAS",
				"Victoria" => "VIC",
				"Western Australia" => "WA"
			}


# 1. display each province, followed by its abbreviation, each on its own line

provinces.each do |key, value| 
	puts "#{key} #{value}"
end
# line to distinguish exercise output


# 2. using the .each method, display the months in the second quarter of the year, in a single row
	puts months[3..5].join(" ")
 # line to distinguish exercise output

 [3,4,5].each do |value|
 	puts months[value]
 end


# 3. display the current year, followed by the third quarter months, and the same for the next two years, as shown
# 
# 2012: July August September
# 2013: July August September
# 2014: July August September
#
# there are many different ways you could do this, but you will need to nest one loop inside another.
# for this exercise, do not use the .each method in either loop
# line to distinguish exercise output

def next_three_years_second_quarters(start_year)
	months = ["April", "May", "June"]
	years = (start_year..start_year + 2)
	
	years.each do |year|
		puts "#{year}: #{months}.join(" ")}"
	end
end

def output_months_for_years(years,months_range)
	months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	years.each do |year|
		months_as_strings = months.slice(months_range)
		puts "#{year}: #{months_as_strings.join(" ")}"
	end
end
