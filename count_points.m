function [points] = count_points(word, points, random_letters);


for iter = 1:length(word);
    if contains(random_letters, word(iter))
        done = find(random_letters==word(iter));
        random_letters(done) = [];
    else
        points = points + 0;
        disp('You did not use the provided letters properly! Try Again!')
        return

    end
end

    

points = points + length(word);
end



