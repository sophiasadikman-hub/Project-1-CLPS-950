t = timer('TimerFcn','stat=false; disp("Time is Up!")','StartDelay',180); %This is the timer function. The command "TimerFcn" is the command that will be executed when the timer fires. The "StartDelay" property notes how much time is going to be elapsed before the timer fires. The timer counts for 60 seconds, and once the 60 seconds are completed, it uses "disp" to display the message: Time is Up! to the player%
start(t) %This begins the timer command. The name of the function is t.

countdown = 180; %This establishes the 60 seconds as a variable, countdown, just so that the code is cleaner and more intuitive!%  
stat = true; %Stat is another variable%
while (stat == true) %When the variable Stat is true, the following commands will be run%
    disp(countdown); %The countdown of 60 seconds will be displayed, so that the player will be able to know how much time they have left%
    countdown = countdown - 1; %This is responsible for decreasing the 60 seconds by one each time!%
    pause(1) %The function pauses for one count%
end

delete(t) %It is important to delete the timer objects after they are used%


