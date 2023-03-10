function [random_letters] = letter_draw()
vector = [ 'a' ,'b' ,'c']
letter_selected = randi(3,1)
random_letters = vector(letter_selected)
end