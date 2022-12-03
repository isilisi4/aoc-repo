#!/usr/bin/env ruby

total = 0

File.foreach("input.txt").each_slice(3){ |threelines|
    first, second, third = threelines[0].strip,threelines[1].strip,threelines[2].strip
    common  = (first.chars & second.chars & third.chars).join('')
    total += common == common.upcase ? common.ord() - 38 : common.ord() - 96
}
puts total