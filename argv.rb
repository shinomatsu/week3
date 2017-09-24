# def convert_word_to_pig_latin(word)
#   unless word[0] =~ /[aiueo]/
#     new_arr = ["ay"]
#     arr = word.partition(/[aiueo]/)
#     #>[h,e,llo]
#     new_arr.unshift arr[0]
#     arr.slice!(0)
#     latin = arr.concat(new_arr)
#     latin.join
#   else
#   end
# end

#与えらた引数が配列で出力される
#

#puts convert_word_to_pig_latin("pig")

# def convert_word_to_pig_latin(word)
#   unless word[0] =~ /[aiueo]/
#     new_arr = ["ay"]
#     arr = word.partition(/[aiueo]/)
#     #>[h,e,llo]
#     new_arr.unshift arr[0]
#     arr.slice!(0)
#     latin = arr.concat(new_arr)
#     latin.join
#   else
#   end
# end

# puts (convert_word_to_pig_latin(ARGV[0]))

# def convert_word_to_pig_latin(sentence)
#   unless word[0] =~ /[aiueo]/
#     new_arr = ["ay"]
#     arr = word.partition(/[aiueo]/)
#     #>[h,e,llo]
#     new_arr.unshift arr[0]
#     arr.slice!(0)
#     latin = arr.concat(new_arr)
#     latin.join
#   else
#   end
# end

# def pig_latin(word)

#   if word.match(/^[aeiou].*[aeiou]?$/i)
#     return word
#   else
#     return word =  word[1..-1] + word[0] + "ay"

#   end

#   #puts (pig_latin(ARGV[0]))



# end

# def convert_sentence(sentence)

#   sentence_array = sentence.split(" ")
#   result = ""
#   sentence_array.each{|x| result += pig_latin(x) + " " }
#   return result

# end

# a = ARGV.map{|sentence| convert_sentence(sentence)}
# puts a.join("")

def atm(add)

  balance = 10
  result = 10 + add.to_i

  "You balance is now  #{result} "
end

#puts atm(10)
puts (atm(ARGV[0])) 



def sum(a, b, c)
    result = a + b + c
    return result
end
 
puts(sum(ARGV[0], ARGV[1], ARGV[2]))
puts(sum(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i))

def calculator(num1,ope,num2)
  a = num1.to_i
  b = num2.to_i

   if ope ==  "+"
     result =  a + b
     elsif ope == "-"
       result  =  a - b
     elsif ope == "*"
        result  = a * b
       elsif ope == "/"
          result  = a / b

    end
  
  return result
end

#1 p calculator("3","+","2")
p (calculator(ARGV[0],ARGV[1],ARGV[2]))




