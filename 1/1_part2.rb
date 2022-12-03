#!/usr/bin/env ruby 

top_3_elves = []
count = 0

File.foreach("input.txt"){ |line|
    if line == "\n"
        top_3_elves << count unless count == 0
        count = 0
    else
        count += line.to_i
    end
}
top_3 = top_3_elves.sort.last(3).sum

puts top_3