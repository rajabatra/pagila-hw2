/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */
SELECT sf.feature AS special_features, COUNT(*) AS count
FROM film f, unnest(f.special_features) AS sf(feature)
GROUP BY sf.feature
ORDER BY sf.feature ASC;
