function [] = player() %main player function that calls the other functions to create one game

points = 0; %starts player points off at 0 
letters = letter_draw(); %calls the letter_draw function which generates a random set of letters each time and sets that equal to the variable letters
disp(letters); %displays the letters that the letter_draw function generated
while true %a while loop that repeats the word checking and point assigning code (i.e. lets users make words over and over again and updates the point value) until the game is up
    word = input('Type word Here: ', "s"); %code for player to input their word
    checking = word_checking(word); %calls word_checking function to check if the word is in the dictionary, assigns that to variable 'checking'
    if checking ==1 %if 'checking' is true i.e. if matlab finds the inputted word in the dictionary
        points = count_points(word, points, letters); %then calls the count_points function to count the points for the word
        pnts = ['Points: ',num2str(points)]; %sets up an updated point value that can be displayed 
        disp(pnts); %actually displays the updated point value to the player
    else 
        disp('Not a word!'); %if matlab does not find the inputted word in the dictionary, then displays 'Not a word' to the player
    end %ends the while loop

end   %ends the player function
great_job = imread('great_job.png'); %loads a great job image
imshow(great_job) %displays a great job image after the game finishes
