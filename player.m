function [] = player()

points = 0;
letters = letter_draw();
disp(letters);
while true
    word = input('Type word Here: ', "s");
    checking = word_checking(word);
    if checking ==1
        points = count_points(word, points, letters);
        pnts = ['Points: ',num2str(points)];
        disp(pnts);
    else 
        disp('Not a word!');
    end

end   
%great_job = imread('great_job.png');
%imshow(great_job)
Timer+Image();
  

%exits program when timer is out

