# Steps: 

# Create an empty array called katz_deli to update with the line

# Define a method called line to show everyone that is listed in line. 
# If no one is in line then puts "The line is currently empty."

# Define a Method called take_a_number which should accept the katz_deli array and the name of the new person in line
# this should add them to the place in line and tell them their place in line NOT THEIR INDEX 

#Create a now_serving method that displays the first person in line and then removes them from katz_deli 
# If no one is in line puts "There is nobody waiting to be served!"

katz_deli = []

def line(katz_deli)
    if  katz_deli.length > 0
        line_array = []
        katz_deli.each_with_index do |e, i|
            i += 1
            line_array << "#{i}. #{e}"
        end
        puts "The line is currently: #{line_array.join(" ")}"
    else katz_deli.size == 0
        puts "The line is currently empty."
    end
end


def take_a_number(katz_deli, name)
    katz_deli << "#{name}"
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end


def now_serving(katz_deli)
    if katz_deli.length > 0
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    else katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    end
end


