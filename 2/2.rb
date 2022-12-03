#!/usr/bin/env ruby

# A X = 4  A Y = 8  A Z = 3
# B X = 1  B Y = 5  B Z = 9
# C X = 7  C Y = 2  C Z = 6  

dict = {"A X" => 4, "A Y" => 8, "A Z" => 3, "B X" => 1, "B Y" => 5,
"B Z" => 9,"C X" => 7, "C Y" => 2, "C Z" => 6 }

total = 0

File.foreach("input.txt"){ |line|
    total += dict.fetch(line.strip)
}

puts total