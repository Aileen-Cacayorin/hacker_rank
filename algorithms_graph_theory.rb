#Snakes and Ladders
for testcase_i in (0..t-1)
    n = gets.strip.to_i
    ladders = Array.new
    for j in (0..n-1)
        new_ladder = gets.strip.split(" ").map!{|x| x.to_i}
        ladders.push(new_ladder)
    end

    m = gets.strip.to_i
    snakes = Array.new
    for k in (0..m-1)
        new_snake = gets.strip.split(" ").map!{|x| x.to_i}
        snakes.push(new_snake)
    end
    print ladders
    print snakes
end
