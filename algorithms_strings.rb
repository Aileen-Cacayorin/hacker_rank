#Pangram
# Enter your code here. Read input from STDIN. Print output to STDOUT

def is_pangram(sentence)
    letters = Hash.new
    sentence.each do |foo|
        if letters[foo]
            letters[foo] +=1
        else
            letters[foo] = 1
        end
    end

    for i in ("a".."z")
        if letters[i]
            next
        else
            return "not pangram"
        end
    end
    return "pangram"

end

sentence = gets.strip.gsub(/\s+/, "").split("").map!{|x| x.downcase}

print is_pangram(sentence)
