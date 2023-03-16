t = timer('TimerFcn','stat=false; disp("Time is Up!")','StartDelay',60);
start(t)

countdown = 60;
stat = true;
while (stat == true)
    disp(countdown);
    countdown = countdown - 1;
    pause(1)
end