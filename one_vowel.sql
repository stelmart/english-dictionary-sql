SELECT word, LENGTH(word) FROM words 
 WHERE word NOT LIKE '%a%'
 AND word NOT LIKE '%e%'
 AND word NOT LIKE '%i%'
 AND word NOT LIKE '%o%'
 AND CHAR_LENGTH(word) > 14;
