SELECT countries.name, SUM(players.goals)
FROM players JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name;
