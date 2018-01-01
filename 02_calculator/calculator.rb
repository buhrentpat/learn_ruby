#write your code here

def add (num1, num2)

	calculate = num1 + num2

	calculate

end

def subtract (num1, num2)

	calculate = num1 - num2

	calculate

end

def sum (array)

	sum = 0
	array.each do |i|
  	sum += i
	end

sum

end

def multiply (*num)

	calculate = 1

	num.each do |i|
		if i!=0
			calculate = calculate * i
		else
			calculate
		end
	end

	calculate

end

