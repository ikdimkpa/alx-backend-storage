-- reates a stored procedure ComputeAverageWeightedScoreForUsers that computes
-- and store the average weighted score for all students.

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser()
BEGIN
	UPDATE users
	SET average_score = SELECT (SUM(corrections.score * project.weight / SUM(projects.weight))
	FROM corrections INNER JOIN project ON projects.id = corrections.project_id
	WHERE corrections.user_id = user_id);
END$$
DELIMITER ;
