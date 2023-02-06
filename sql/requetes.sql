SELECT
    pokemon.pok_nom ``,
    pokemon2.pok_nom ``,
    evolue_en.evo_niveau,
FROM
    -- evo_id evo_base_id evo_poke_id pokemon pokemon,
    pokemon2 pokemon,
    pokemon pokemon,
    evolue_en
WHERE
    pokemon.