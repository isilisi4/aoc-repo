#!/usr/bin/env ruby

total = 0

File.foreach("input.txt"){ |line|
    groups = line.strip.match(/(\d+)-(\d+),(\d+)-(\d+)/)
    elf_section_1, elf_section_2 = ($1.to_i .. $2.to_i).to_a , ($3.to_i .. $4.to_i).to_a
    if elf_section_1.size > elf_section_2.size
        total += elf_section_2.intersection(elf_section_1).eql?(elf_section_2) ? 1 : 0
    else
        total += elf_section_1.intersection(elf_section_2).eql?(elf_section_1) ? 1 : 0
    end
}

puts total