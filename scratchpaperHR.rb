def  insertionSort(ar)
    array = ar
    new_array = array
    n = array.count()
    for i in (0..n-2)
        puts "new_loop"
       if new_array[i] > array[(i+1)]
           new_high_value = array[i]
           new_low_value = array[i+1]
           new_array[i] = new_low_value
           new_array[i+1] = new_high_value
           sort_number = new_low_value
           puts sort_number
           new_array.slice!(new_array.index(sort_number), 1)
           puts new_array.join(" ")
           for j in (0..n-1)
             if sort_number > new_array[j]
                cut_array = new_array.slice!(j+1, n-1)
                puts new_array
                puts cut_array
                new_array = new_array + sort_number
                puts new_array
                new_array = new_array + cut_array
                puts new_array
              end
            end
        end
        puts new_array.join(" ")
    end
end
cnt = gets.to_i
ar = gets.strip.split(" ").map! {|i| i.to_i}
insertionSort(ar)
