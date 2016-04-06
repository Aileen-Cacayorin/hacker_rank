#Fibonacci Modified
def foo(a, b, n)
    array = [a, b]
    if n == 0
        return a
    #elsif n == 1
        #return b
    else
       for i in (1..(n-2))
           array[i+1] = (array[i])**2 + array[i-1]
       end
    end
    return array[n-1]
end

array = gets.strip.split(' ').map!{|x| x.to_i}
n = array[2]
a = array[0]
b = array[1]


puts foo(a, b, n)
