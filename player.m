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
  

%exits program when timer is out

