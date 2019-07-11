def translate(s)
    vowels = /[aeiou]/i
    qu = /qu/
    s = s.split
    s.map! { |i|
        if(i.capitalize! != nil)
            i.downcase!
            if(i[0] =~ vowels)
                i = i + "ay"
            elsif(((i =~ qu) == 0) || ((i =~ qu) == 1))
                v = (i =~ vowels)
                p = i.slice!(0..v)
                i += p +"ay"
            else
                v = (i =~ vowels)-1
                p = i.slice!(0..v)
                i += p +"ay"
            end
        elsif(i.capitalize! == nil)
            i.downcase!
            if(i[0] =~ vowels)
                i = i + "ay"
            elsif(((i =~ qu) == 0) || ((i =~ qu) == 1))
                v = (i =~ vowels)
                p = i.slice!(0..v)
                i += p +"ay"
            else
                v = (i =~ vowels)-1
                p = i.slice!(0..v)
                i += p +"ay"
            end
            i.capitalize!
        end
    }
    s = s.join(" ")
    puts s
    s
end