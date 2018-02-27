DROP TABLE double_letter;
CREATE TABLE double_letter (word VARCHAR(32));
DELIMITER $$
DROP PROCEDURE p$$
CREATE PROCEDURE p() 
BEGIN 
 DECLARE i INT DEFAULT 97;
 DECLARE j INT DEFAULT 97;
 DECLARE k INT DEFAULT 97;
 DECLARE letter1 CHAR(1) DEFAULT 'a';
 DECLARE letter2 CHAR(1) DEFAULT 'a';
 DECLARE letter3 CHAR(1) DEFAULT 'a';
 WHILE i < 123 DO
  WHILE j < 123 DO
   WHILE k < 123 DO
    SET letter1 = CHAR(i);
    SET letter2 = CHAR(j);
    SET letter3 = CHAR(k);
    INSERT INTO double_letter
     SELECT word FROM words
      WHERE word LIKE CONCAT('%', letter1, letter1, '%', letter2, letter2, '%', letter3, letter3, '%');
    SET k = k + 1;
   END WHILE;
   SET k = 97;
   SET j = j + 1;
  END WHILE;
  SET k = 97;
  SET j = 97;
  SET i = i + 1;
 END WHILE;
END$$
DELIMITER ;
