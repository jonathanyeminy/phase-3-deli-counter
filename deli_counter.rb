# Write your code here.
require 'pry'

def line(other_deli)
    if other_deli.length == 0
        puts "The line is currently empty."
    else
        counter = 1
        other_deli.each do|name|
            if counter == 1
                print "The line is currently: #{counter}. #{name}"
                counter += 1
            else
                print " #{counter}. #{name}"
                counter += 1
            end
        end
    end
end
other_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer"]
line(other_deli)

def take_a_number(katz_deli, end_of_line)
    katz_deli << end_of_line
    current_position = katz_deli.length
    puts "Welcome, #{end_of_line}. You are number #{current_position} in line."
end

def now_serving(katz_deli)
    serving = katz_deli[0]
    length = katz_deli.length
    if length == 0
        puts "There is nobody waiting to be served!"
        katz_deli.shift
    else
        puts "Currently serving #{serving}."
        katz_deli.shift
    end
end