
function [isword] = word_checking(word) %function to check if inputted word is in the dictionary
emb = fastTextWordEmbedding; %uses matlab text analytics toolbox to return a word embedding system for 1 million english words

isword = isVocabularyWord(emb,word); %checks if the word is in the vector of 1 million pre installed dictionary wrods

end

