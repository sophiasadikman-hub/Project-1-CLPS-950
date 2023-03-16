function [random_letters] = letter_draw()

consonants = [ 'b' ,'c', 'd','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z' ];
vowels = ['a','e','i','o','u'];

letters_selected_cons = randi(length(consonants),1,5);
letters_selected_vows = randi(length(vowels),1,2);

x = [consonants(letters_selected_cons),vowels(letters_selected_vows)];
random_letters = [];

for i = 1:length(x)
    random_letters = [random_letters, x(i), '   '];


end