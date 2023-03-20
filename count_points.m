function [points] = count_points(word, points, random_letters); %sets up function to count the points for the inputted words


for iter = 1:length(word); %loops that goes through each letter in the inputted word
    if contains(random_letters, word(iter)) %checks that each letter of the inputted word is contained in the array of random letters that was provided
        done = find(random_letters==word(iter)); %takes the index of where the letter in the user-inputted word is in the random letter array 
        random_letters(done) = []; %removes that indexed letter from the random_letters vector so that when matlab checks for the next letter of the inputted word it knows that the other letter was already used (every letter from the array of letters provided can only be used once)
        disp('You did not use the provided letters properly! Try Again!')
        return

    end
end

    

points = points + length(word); %adds updated points calculated as amount of letters (i.e. length) of the inputted word
end



