function [points, used_vector] = count_points(word, points, random_letters, used_vector); %sets up function to count the points for the inputted words
%maybe i have to make a for loop checking letter by letter
if strfind(word, used_vector) %if statement to see if the inputted word by the user was already used 
    disp('You already made this word!') %displays the statement in quotes
    points = points; %to stop coding errors
    used_vector = used_vector; %to stop coding errors
    return
end

for iter = 1:length(word); %loops that goes through each letter in the inputted word
    if contains(random_letters, word(iter)) %checks that each letter of the inputted word is contained in the array of random letters that was provided
        rl = find(random_letters==word(iter)); %takes the index of where the letter in the user-inputted word is in the random letter array 
        random_letters(rl(1)) = []; %removes that indexed letter from the random_letters vector so that when matlab checks for the next letter of the inputted word it knows that the other letter was already used (every letter from the array of letters provided can only be used once)
    else
        disp('You did not use the provided letters properly! Try Again!') %displays this statement if letters of the user inputted words are not in the random vector of words the game generated
        return

    end
   
end

used_vector = [used_vector, word]; %updates a vector to add words the user already inputted (used in the player function so that the player cannot repeat words)

points = points + length(word); %adds updated points calculated as amount of letters (i.e. length) of the inputted word
end



