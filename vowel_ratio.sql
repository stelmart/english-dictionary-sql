SELECT word, CHAR_LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(word, 'a', ''), 'e', ''), 'i', ''), 'o', ''), 'u', ''))/CHAR_LENGTH(word) FROM words 
 WHERE CHAR_LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(word, 'a', ''), 'e', ''), 'i', ''), 'o', ''), 'u', ''))/CHAR_LENGTH(word) BETWEEN 0.86 and 0.99;
