--  lists all bands with Glam rock as their
--	main style, ranked by their longevity

SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
FROM metal_band
WHERE FIND_IN_SET('Glam rock', IFNULL(style, '') > 0
ORDER BY lifespan DESC;


--SELECT band_name, (COALESCE(split, 2022) - formed) AS lifespan
--FROM metal_band
--WHERE style LIKE '%Glam rock%'
--ORDER BY lifespan DESC;
