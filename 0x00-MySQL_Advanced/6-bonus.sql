-- creates a stored procedure AddBonus that adds
-- a new correction for a student.

DROP PROCEDURE IF EXISTS AddBonus;

CREATE PROCEDURE AddBonus(
		IN user_id INT,
		IN project_name VARCHAR
	    IN score FLOAT)
DELIMITER $$
BEGIN
	DECLARE project_id INT;

END$$
DELIMITER ;
