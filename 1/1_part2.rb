#!/usr/bin/env ruby 

top_3_elves= [0,0,0]
biggest_carrying_elf = 0
count = 0

File.foreach("input.txt"){ |line|
    if line == "\n"
        top_3_elves[0] = count > top_3_elves[0] ? count : top_3_elves[0]
        top_3_elves[1] = count < top_3_elves[0] && count > top_3_elves[1] ? count : top_3_elves[1]
        top_3_elves[2] = count < top_3_elves[0] && count < top_3_elves[1] && count > top_3_elves[2] ? count : top_3_elves[2] 
        
        count = 0
        
    else
        count += line.to_i
    end
}

puts top_3_elves.sum