#The Angry Professor (RUBY):
#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)

    student_count = 0
    for i in a
      if i <= 0
        student_count += 1
      end
    end

    if student_count < k
      puts "YES"
    else
      puts "NO"
    end
end

#Sherlock and the Beast (Ruby):
#!/bin/ruby

t = gets.strip.to_i



def remainders(number)
  fives = number
  threes = number - fives
  result = Array.new(2)
  while fives >= 0 && threes <= number do
    result[0] = fives
    result[1] = threes
      if((fives % 3 == 0) && (threes % 5 == 0))
        return result
      else
        threes += 5
        fives -= 5
      end
  end
  result[0] = -1
  result[1] = -1
  return result
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  results = remainders(n)
  fives = results[0]
  threes = results[1]
  if fives == -1
    puts "-1"
  else
    result = ""
    fives.times do |i|
      result += "5"
    end
    threes.times do |i|
      result += "3"
    end
    puts result
  end
end

# The Utopian Tree (Ruby):
#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    h = 1
    for i in (0..n)
        if i == 0
            h = 1
        elsif (i%2) != 0
            h = h*2
        else
            h+=1
        end
        h
    end
    puts h
end

# Find Digits
#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    arr = n.to_s.split(//)
    count = 0
    for num in arr
        if num.to_i == 0
            next
        elsif (n % num.to_i) == 0
            count += 1
        end
    end
    puts count
end

#SHERLOCK AND SQUARES
# Enter your code here. Read input from STDIN. Print output to STDOUT
#!/bin/ruby
t = gets.strip.to_i
for a in (0..t-1)
    range = gets.strip.split(' ').map{|a| a.to_i}
    a = Math.sqrt(range[0]).ceil()
    b = Math.sqrt(range[1]).floor()
    puts (b - a) + 1

end

#Service Lane
#!/bin/ruby
n,t = gets.strip.split(' ')
n = n.to_i
t = t.to_i
width = gets.strip
width = width.split(' ').map(&:to_i)

for a0 in (0..t-1)
    i,j = gets.strip.split(' ')
    i = i.to_i
    j = j.to_i
    lane_width = width[i]
    for num in (i..j)
        if width[num] < lane_width
            lane_width = width[num]
        end
        lane_width
    end
    puts lane_width
end

# Cut the sticks

#!/bin/ruby
def cut(arr)
    array = arr
    while array.count() > 0 do
        cut_length= array.sort.first
        cut_sticks = 0
        n = array.count
        for i in (0..n-1)
            cut_sticks += 1
            array[i] -= cut_length
        end
        puts cut_sticks
        array.each do|number|
            if number < 1
                array.delete(number)
            end
        end
        array
    end
    array
end
n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

cut(arr)
