#!/usr/bin/env ruby 

biggest_carrying_elf = 0
count = 0
File.foreach("input.txt"){ |line|
    if line == "\n"
        biggest_carrying_elf = count >= biggest_carrying_elf ? count : biggest_carrying_elf
        count = 0
    else
        count += line.to_i
    end
}
puts biggest_carrying_elf