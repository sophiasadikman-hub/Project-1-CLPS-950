function [points, used_vector] = count_points(word, points, random_letters, used_vector); %sets up function to count the points for the inputted words
%maybe i have to make a for loop checking letter by letter
if strfind(word, used_vector)
    disp('You already made this word!')
    points = points;
    used_vector = used_vector;
    return
end

for iter = 1:length(word); %loops that goes through each letter in the inputted word
    if contains(random_letters, word(iter)) %checks that each letter of the inputted word is contained in the array of random letters that was provided
        rl = find(random_letters==word(iter)); %takes the index of where the letter in the user-inputted word is in the random letter array 
        random_letters(rl(1)) = []; %removes that indexed letter from the random_letters vector so that when matlab checks for the next letter of the inputted word it knows that the other letter was already used (every letter from the array of letters provided can only be used once)
    else
        disp('You did not use the provided letters properly! Try Again!')
        return

    end
   
end
used_vector = [used_vector, word];

points = points + length(word); %adds updated points calculated as amount of letters (i.e. length) of the inputted word
end



