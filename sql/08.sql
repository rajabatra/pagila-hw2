/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
SELECT DISTINCT f.title
FROM film f, unnest(f.special_features) as sf(feature)
WHERE f.rating = 'G'
AND sf.feature = 'Trailers'
ORDER BY f.title ASC;
