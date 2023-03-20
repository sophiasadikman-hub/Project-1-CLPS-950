function [] = player(); %main player function that calls the other functions to create one game
disp('Welcome to Word Cookie!');
disp('Your job is to make as many words as you can with the given letters!');
disp('You have three minutes, and your time starts now!')

points = 0; %starts player points off at 0 
used_words = []; %creates an empty vector, used_words, to later populate with words the player has already inputted so that matlab can recognize those words and not count them multiple times in the count_points function
letters = letter_draw(); %calls the letter_draw function which generates a random set of letters each time and sets that equal to the variable letters
iniTime = clock;
limit   = 180;  % sets time limit to 180 seconds 
while etime(clock, iniTime) < limit %while loop to keep the game going until the clock/time runs out
    disp(letters); %displays the letters that the letter_draw function generated
    word = input('Type word Here: ', "s"); %code for player to input their word
    checking = word_checking(word); %calls word_checking function to check if the word is in the dictionary, assigns that to variable 'checking'
    if checking ==1 %if 'checking' is true i.e. if matlab finds the inputted word in the dictionary
       [points, used_words] = count_points(word, points, letters, used_words); %then calls the count_points function to count the points for the word and keep track of the used/inputted words
        pnts = ['Points: ',num2str(points)]; %sets up an updated point value that can be displayed 
        disp(pnts); %actually displays the updated point value to the player
    else 
        disp('Not a word!'); %if matlab does not find the inputted word in the dictionary, then displays 'Not a word' to the player
    end %ends the if statement
end %ends the while loop
disp('Time is up--thanks for playing! Want to play again?') %Displays a message after the player is done!%
great_job = imread('great_job.png'); %The command "imread" reads an image from a graphics file, in this case, "great_job.png".%
imshow(great_job) %The command "imshow" diplays the image%
end   %ends the player function

