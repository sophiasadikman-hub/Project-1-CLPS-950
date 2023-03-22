function [random_letters] = letter_draw() %Creates function, letter_draw, with an output of 'random_letters'%

consonants = [ 'b' ,'c', 'd','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z' ]; %Creates a matrix, consonants, of all the consonants in the alphabet. Note that the letter 'y' is considered a consonant in our game.%
vowels = ['a','e','i','o','u']; %Creates a matrix, vowels, of all the vowels in the alphabet.% 

letters_selected_cons = randi(length(consonants),1,5); %Creates a variable, letters_selected_cons, of a random 1:5 matrix with 5 consonants.%
letters_selected_vows = randi(length(vowels),1,2); %Creates a variable, letters_selected_vows, of a random 1:2 matrix with 2 vowels.%

given_letters = [consonants(letters_selected_cons),vowels(letters_selected_vows)]; %Combines the selected consonants and vowels matrices into one matrix.%
random_letters = []; %Creates empty array that will later be populated with the seven letters%

for i = 1:length(given_letters) 
    random_letters = [random_letters, given_letters(i), '   ']; %Presents the seven letters with 3 spaces in between each for a cleaner look.%


end %Ends the for loop.%