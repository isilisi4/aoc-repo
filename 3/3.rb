#!/usr/bin/env ruby

#first split line in half
#compare common char
#asses value of common char
# a-z 1-26 A-Z 27-56
total = 0

File.foreach("input.txt"){ |line|
    s = line.strip
    first, second = s[0...s.size/2], s[s.size/2...s.size]
    common  = first.chars & second.chars
    commonString = common.join('')
    if commonString == commonString.to_s.upcase
        #27-56
        total += commonString.ord() - 38
        
    else
        total += commonString.ord() - 96
        
    end
}

puts total