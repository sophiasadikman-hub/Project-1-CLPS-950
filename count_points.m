function [points] = count_points(word);

points = 0;

for iter = 1:length(word)
    %points = regexpi(word, '[a-zA-Z]'))
    points = points + 1;
end

