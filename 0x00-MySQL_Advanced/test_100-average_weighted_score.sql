-- reates a stored procedure ComputeAverageWeightedScoreForUser that computes
-- and store the average weighted score for a student.

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
	UPDATE users
	SET average_score = SELECT (SUM(corrections.score * project.weight / SUM(projects.weight))
	FROM corrections INNER JOIN project ON projects.id = corrections.project_id
	WHERE corrections.user_id = user_id)
	WHERE user.id = user_id;
END$$
DELIMITER ;
