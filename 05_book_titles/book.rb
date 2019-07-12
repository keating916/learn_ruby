class Book
    attr_reader :title

    def title=(s)
        @title = titleize(s)
        @title 
    end

    def titleize(string)
        if(string.split(" ").length > 1)
            out = string.split.map{ |i| 
                if(i != "a" && i != "the" && i != "of" && i != "and" && i != "over" && i != "in" && i != "an") 
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

end
