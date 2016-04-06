# Enter your code here. Read input from STDIN. Print output to STDOUT
def mean(array, n)
    sum = 0
    array.each { |x| sum+=x }
    return (sum/n).round(1)
end

def median(array, n)
    new_array = array.sort
    if n%2 == 1 #if n is odd
        index_value = (n/2).ceil
        return new_array[index_value]
    elsif n%2 == 0 #if n is even
        upper_index = n/2
        lower_index = upper_index - 1
        return (new_array[lower_index] + new_array[upper_index]).to_f/2.round(1)
    end
end

def mode(array, n)
    new_array = array.sort
    frequency = Hash.new
    new_array.each do |number|
        if frequency[number]
            frequency[number] +=1
        else
            frequency[number] = 1
        end
    end

    new_mode = new_array[0]
    highest_frequency = 1
    frequency.each do |key, value|
        if value > highest_frequency
            new_mode = key
            highest_frequency = value
        end
    end
    return new_mode.to_i
end

def standard_dev(array, n)
    m = mean(array, n)
    new_array = array.map!{|x| (x-m) ** 2 }
    sum = 0
    new_array.each { |x| sum+=x }
    return Math.sqrt(sum/n).round(1)

end
n = gets.strip.to_f
array = gets.strip
array = array.split(' ').map!{|x| x.to_f}

puts mean(array, n)
puts median(array, n)
puts mode(array, n)
puts standard_dev(array, n)
