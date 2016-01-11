#SIMPLE ARRAY SUM(RUBY):
n = gets.strip.to_i #wtf is gets?
array = gets.strip.split(" ").map(&:to_i)   #what is .map(&:to_i)???
sum = 0
for i in array do   #did i completely forget how to do loops?
  sum += i
end
puts sum

# OR

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

sum = 0
arr.each() do |num|
    sum += num
end
puts sum


#SIMPLE ARRAY SUM(PYTHON):
import sys

n = int(raw_input().strip())
arr = map(int,raw_input().strip().split(' '))

sum = 0
for i in arr:
    sum += i
print sum

#DIAGONAL DIFFERENCE(RUBY)
n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

diag_1 = 0
diag_2 = 0
k= n-1

for i in (0..n-1) do
    diag_1 += a[i][i]
    diag_2 += a[k][i]
    k -= 1
end

puts (diag_1-diag_2).abs

#PLUS MINUS(Ruby)
#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

array = Array.new(3){0}

for i in arr do
    if i < 0
        array[1] += 1
    elsif i > 0
        array[0] += 1
    elsif i == 0
        array[2] += 1
    end
end

for i in array do
    puts sprintf("%.6f", (i.to_f)/(n.to_f)) #note how to configure number of decimals
end

#STAIRCASE(Ruby):
#!/bin/ruby

n = gets.strip.to_i
spaces = n-1
pounds = 1

for i in (1..n) do
    (spaces).times do
        print(" ")
    end
    (pounds).times do
        print ("#")

    end
    spaces -= 1
    pounds +=1
    print "\n"   #starts a new line
end


#TIME CONVERSION(RUBY)
#!/bin/ruby

time = gets.strip

time_array = time.split("")

am_pm = time_array.slice(-2, 2).join()

2.times do
    time_array.pop()
end

new_time_array = time_array.join().split(":")

hour = new_time_array[0].to_i


if am_pm =="PM" && hour != 12 #checks for any PM time after 1
    hour += 12
    new_time_array[0] = hour.to_s
    puts new_time_array.join(":")

elsif am_pm =="PM" && hour == 12 #keeps any 12PM time at 12
    puts new_time_array.join(":")

elsif am_pm == "AM" && hour == 12 #checks for any 12am time
    new_time_array[0] = "00"
    puts new_time_array.join(":")

else
    puts new_time_array.join(":")
end
