function [isword] = word_checking(word)

emb = fastTextWordEmbedding;

isword = isVocabularyWord(emb,word);

end

