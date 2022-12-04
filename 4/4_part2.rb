#!/usr/bin/env ruby

total = 0

File.foreach("input.txt"){ |line|
    groups = line.strip.match(/(\d+)-(\d+),(\d+)-(\d+)/)
    elf_section_1, elf_section_2 = ($1.to_i .. $2.to_i).to_a , ($3.to_i .. $4.to_i).to_a

    total += (elf_section_1 & elf_section_2).empty? ? 0 : 1
    
}
puts total