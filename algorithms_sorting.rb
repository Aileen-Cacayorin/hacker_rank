# Insertion Part 1
def  insertionSort( ar)
    array = ar
    n = ar.length()
    sort_number = ar[n-1]
    ar[n-1] = array[n-2]
    new_array = ar.reverse()
    for i in (1..n-1)
        if new_array[i] > sort_number
            new_value = new_array[i]
            array[-i] = new_value
        else
            array[-i] = sort_number
            puts array.join(" ")
            break
        end
        puts array.join(" ")
    end
    if sort_number < array[0]
        array[0] = sort_number
        puts array.join(" ")
    end

end
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}


insertionSort( ar )


# Insertion Part 2
def  insertionSort(ar)
    for i in 1..(ar.length-1)  # starts at second number (index[1])
        sort_number = ar[i] # number to be sorted
        j = i - 1 #index of previous number
        while j >= 0 && ar[j] > sort_number #when value of previous index is greater than sort number:
            ar[j+1] = ar[j] #changes current index value to value of previous index
            j = j - 1 # sets value of j for next step
        end
        ar[j+1] = sort_number #inserts sort_number in correct index_value
        puts ar.join(" ")
    end
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)
