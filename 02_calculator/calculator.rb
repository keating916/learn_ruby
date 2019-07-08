#write your code here
def add(a,b)
    a + b
end

def subtract(a,b)
    a-b
end

def sum(array)
    x = array.reduce(:+)
    if(x == nil) 
        x = 0
    else 
        x
    end
end

def multiply(array)
    x = array.reduce(:*)
    if(x == nil) 
        x = 0
    else 
        x
    end
end

def power(a,b)
    b.times do
        a * a
    end
end
