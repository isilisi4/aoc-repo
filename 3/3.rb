#!/usr/bin/env ruby

total = 0

File.foreach("input.txt"){ |line|
    first, second = line[0...line.size/2], line[line.size/2...line.size]
    common  = (first.chars & second.chars).join('')
    total += common == common.upcase ? common.ord() - 38 : common.ord() - 96
}
puts total