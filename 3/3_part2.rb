#!/usr/bin/env ruby

#first take 3 lines from txt
#compare 3 lines for common
#asses value of common char
# a-z 1-26 A-Z 27-56
total = 0

File.foreach("input.txt").each_slice(3){ |threelines|
    first, second, third = threelines[0].strip,threelines[1].strip,threelines[2].strip
    common  = first.chars & second.chars & third.chars
    puts common
    commonString = common.join('')
    if commonString == commonString.to_s.upcase
        #27-56
        total += commonString.ord() - 38
        
    else
        total += commonString.ord() - 96
        
    end
}

puts total