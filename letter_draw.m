function [random_letters] = letter_draw()
consonants = [ 'b' ,'c', 'd','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z' ];
vowels = ['a','e','i','o','u'];
letters_selected = randi %we need to figure out how to get at least one letter from the vowels, and the rest from the consonants%
random_letters = alphabet(letters_selected)
end