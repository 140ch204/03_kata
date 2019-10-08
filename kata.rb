
def k1(word)
    #compte le nombre de voyelles compris dans le mot donné
    # https://www.codewars.com/kata/54ff3102c1bad923760001f3
    vowels = ["a","e","i","o","u"]
    word_nb_vowels = 0

    word.each_char do |word_letter|

        vowels.each do |vowel_str|

            if vowel_str == word_letter
                word_nb_vowels +=1
            end

        end

    end
    puts word_nb_vowels
end

def k1s(inputStr)
    inputStr.count("aeiou")
end


def k2(list_number)
    # remove smallest number in an array
    # https://www.codewars.com/kata/563cf89eb4747c5fb100001b
    i=0
    number_min = list_number.min
    array_without_smallest = []

    list_number.each do |number|

        if ((number == number_min) && (i == 0))
            i = 1
        else 
            array_without_smallest = array_without_smallest + [number]
        end

    end

    print array_without_smallest
    puts " "

end

def k2s(numbers)
    numbers.reject.with_index { |_,i| i == numbers.index(numbers.min) }
end


def k3( word )
    # get middle of a given word
    #https://www.codewars.com/kata/56747fd5cb988479af000028
    
    len_word = word.length

    if len_word%2 == 0 then
        puts word[len_word/2-1,2]
    else
        puts word[len_word/2,1]
    end

    puts word[0..3]

end

def k3s(s)
    s[(s.size-1)/2..s.size/2]
end


def k4(word)
    # convert strings to how they would be written by Jaden Smith.
    # https://www.codewars.com/kata/5390bac347d09b7da40006f6

    word_jaden_cased = ""
    capitalize_on = 0

    word.each_char do |letter|
        
        if (capitalize_on == 1)
            word_jaden_cased = word_jaden_cased + letter.capitalize
            capitalize_on = 0
        else
            word_jaden_cased = word_jaden_cased + letter
        end

        if letter == " " 
            capitalize_on = 1
        end 

    end

    puts word_jaden_cased

end

def k4s
    self.split.map(&:capitalize).join(" ")
end

def k5(word)
    #https://www.codewars.com/kata/52fba66badcd10859f00097e
    puts word.gsub(/[aeioAEIO]/, '')  
end

def k5s(str)
    str.delete('aeiouAEIOU')
end

def k6(number)
    #
    # https://www.codewars.com/kata/546e2562b03326a88e000020

    number_str = number.to_s
    squarenum =""
    number_str.each_char do |charac|
        squarenum = squarenum + (charac.to_i * charac.to_i).to_s
    end

    puts squarenum.to_i

end

def k6s num
    # code goes here
    num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

def k7(sentence)
    #Simple, given a string of words, return the length of the shortest word(s).
    #https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9

    puts sentence.split(" ").map{ |a| a.length }.sort[0]

end

def k7s(s)
    s.split.map(&:size).min
end

def k8(l)
    #https://www.codewars.com/kata/53dbd5315a3c69eed20002dd

    new_array = []

    l.each do |a|
        if a.is_a? Integer
            new_array = new_array + [a]
        end
    end

    print new_array

    puts
end

def k8s(l)
    l.reject { |x| x.is_a? String }
end

def k9(s)
    #https://www.codewars.com/kata/5412509bd436bd33920011bc
    print 
    print (s.split(//).map{ |a| "x"} + s.split(//).last(4)).join
    puts
end

def k9s(cc)
    cc.gsub(/.(?=....)/, '#')
end

def k10(l)
    #https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa
    player_status = []

    l.each do |player|

        age = player[0]
        handicap = player[0]

        if (age > 55  && handicap > 7) 
            player_status.push("Senior")
        else
            player_status.push("Open")
        end
    end

    return player_status

end


def k10s(data)
    data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }
  end

def k11(s)

    #print [ s.reject{|x| x%2==0 } , s.reject{|x| x%2!=0 } ].sort{|y| y.length} #[0][0].to_i
    print [ s.reject{|x| x%2==0 } , s.reject{|x| x%2!=0 } ]. reject { |y| y.length !=1 }[0][0] #[0][0].to_i

    puts

end

def k10s(integers)
    integers.partition(&:odd?).find(&:one?).first
end

k11([0, 1, 2])
k11([1, 2, 3])
k11([2,6,8,10,3])