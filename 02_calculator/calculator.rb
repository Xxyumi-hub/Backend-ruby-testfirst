#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    if array == []
        0
    else
        result = array.inject(0) do |sum, num|
            sum+=num
        end
        result
    end
end

def multiply(*args)
    args.reduce(1, :*) #array
end

def power(base, exponent)
    base**exponent
end

def factorial(number)
    if number == 0
        1
    else
        (1..number).reduce(1, :*) 
    end
end

