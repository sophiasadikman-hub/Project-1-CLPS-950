t = timer('TimerFcn','stat=false; disp("Time is Up!")','StartDelay',60);
start(t)

countdown = 60;
stat = true;
while (stat == true)
    disp(countdown);
    countdown = countdown - 1;
    pause(1)
end

great_job = imread('great_job.png');
imshow(great_job)
