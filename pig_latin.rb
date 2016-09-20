
# This method plays de pig latin game changing words 
def pig_latin_word
  word = gets.chomp
    if word[0] =~(/[a,e,i,o,u]/) 
      word + 'way'
    else 
      arry = word.split("")
      loop do 
        if arry[0] =~ (/[a,e,i,o,u]/) || arry.length == 1 
          break  
        else 
          arry.rotate! 
        end 
      end 
      word = arry.join + "ay"
    end 
end 
p pig_latin_word

#This method does the pig latin game with sentences 
def pig_latin_sentence
  sentence = gets.chomp
  pig_latin_arry = []
  arry1 = sentence.split 
  arry1.each do |word| 
    if word[0] =~(/[a,e,i,o,u]/) 
      pig_latin_arry <<  word + 'way'
      pig_latin_arry
    else 
      consonant = word.split("")
      loop do 
        if consonant[0] =~ (/[a,e,i,o,u]/) || consonant.length == 1 
          break  
        else 
          consonant.rotate!           
        end          
      end 
      word = consonant.join + "ay"
      pig_latin_arry << word  
    end 
  end
  new_sentence = pig_latin_arry.join(" ")
  new_sentence 
end 

p pig_latin_sentence 