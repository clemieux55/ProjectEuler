# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

number = 999

def multiples_of_three(number)
	numbers_divisible_by_3 = []
	for i in 1..number
		if i % 3 == 0
			numbers_divisible_by_3 << i
		end
	end
	numbers_divisible_by_3
end

def multiples_of_five(number)
	numbers_divisible_by_5 = []
	for i in 1..number
		if i % 5 == 0
			numbers_divisible_by_5 << i 
		end
	end
	numbers_divisible_by_5
end

def get_array_of_total_multiples_and_return_sum(number)
	(multiples_of_five(number) + multiples_of_three(number)).uniq
end

def answer(number)
	get_array_of_total_multiples_and_return_sum(number).inject{|sum,x| sum + x }
end

puts answer(number)