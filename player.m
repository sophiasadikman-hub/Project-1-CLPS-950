function [] = player(); %main player function that calls the other functions to create one game
disp('Welcome to Word Cookie!');
disp('Your job is to make as many words as you can with the given letters!');
disp('You have three minutes, and your time starts now!')
%t = timer('TimerFcn','stat=false; disp("Time is Up!")','StartDelay',180); %This is the timer function. The command "TimerFcn" is the command that will be executed when the timer fires. The "StartDelay" property notes how much time is going to be elapsed before the timer fires. The timer counts for 60 seconds, and once the 60 seconds are completed, it uses "disp" to display the message: Time is Up! to the player%
%start(t) %This begins the timer command. The name of the function is t.

%countdown = 180; %This establishes the 60 seconds as a variable, countdown, just so that the code is cleaner and more intuitive!%  
%stat = true; %Stat is another variable%
points = 0; %starts player points off at 0 
used_words = [];
letters = letter_draw(); %calls the letter_draw function which generates a random set of letters each time and sets that equal to the variable letters
iniTime = clock;
limit   = 180;  % Seconds 
while etime(clock, iniTime) < limit
%while true
%while stat == true %a while loop that repeats the word checking and point assigning code (i.e. lets users make words over and over again and updates the point value) until the game is up
    disp(letters); %displays the letters that the letter_draw function generated
    word = input('Type word Here: ', "s"); %code for player to input their word
    checking = word_checking(word); %calls word_checking function to check if the word is in the dictionary, assigns that to variable 'checking'
    if checking ==1 %if 'checking' is true i.e. if matlab finds the inputted word in the dictionary
       [points, used_words] = count_points(word, points, letters, used_words); %then calls the count_points function to count the points for the word
        pnts = ['Points: ',num2str(points)]; %sets up an updated point value that can be displayed 
        disp(pnts); %actually displays the updated point value to the player
    else 
        disp('Not a word!'); %if matlab does not find the inputted word in the dictionary, then displays 'Not a word' to the player
    end %ends the if statement
end %ends the while loop
disp('Thanks for playing! Want to play again?') %Displays a message after the player is done!%
great_job = imread('great_job.png'); %The command "imread" reads an image from a graphics file, in this case, "great_job.png".%
imshow(great_job) %The command "imshow" diplays the image%
end   %ends the player function

%delete(t) %It is important to delete the timer objects after they are used%
