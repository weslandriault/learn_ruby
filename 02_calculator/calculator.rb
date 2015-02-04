def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

# def sum(numbers)
#   sum = numbers.inject :+
# end


def sum(numbers)
	sum = 0
	numbers.each{|num| sum += num}
	sum
end

