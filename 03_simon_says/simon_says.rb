#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num = 2)
    num = num -1
    out = word
    num.times do
        out += " #{word}"
    end
    out
end

def start_of_word(s, num) 
    num = num-1
    s[0..num]
end

def first_word(s)
    s = s.split
    s[0]
end

def titleize(string)
    if(string.split(" ").length > 1)
        out = string.split.map{ |i| 
            if(i != "a" && i != "the" && i != "of" && i != "and" && i != "over") 
                i.capitalize
            else 
                i 
            end
        }
        if(out[0].capitalize! != nil)
            out[0].capitalize
        end
        out = out.join(" ")
    else 
        out = string.capitalize
    end
    
    out
end