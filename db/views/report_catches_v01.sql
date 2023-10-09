SELECT
  pokemons.id,
  pokemons.name,
  pokemons.image,
  COUNT(catches.pokemon_id) AS count_pokemon
FROM catches
INNER JOIN pokemons ON pokemons.id = catches.pokemon_id
GROUP BY pokemons.id
ORDER BY count_pokemon DESC
LIMIT 5