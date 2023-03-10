INSERT INTO
	pokemons (pok_id, pok_nom)
VALUES
	('', 'Bulbizarre'),
	('', 'Herbizarre'),
	('', 'Florizarre'),
	('', 'Salameche'),
	('', 'Reptincel'),
	('', 'Dracaufeu'),
	('', 'Carapuce'),
	('', 'Carabaffe'),
	('', 'Tortank'),
	('', 'Chenipan'),
	('', 'Chrysacier'),
	('', 'Papilusion'),
	('', 'Aspicot'),
	('', 'Coconfort'),
	('', 'Dardargnan'),
	('', 'Roucool'),
	('', 'Roucoups'),
	('', 'Roucarnage'),
	('', 'Rattata'),
	('', 'Rattatac'),
	('', 'Piafabec'),
	('', 'Rapasdepic'),
	('', 'Abo'),
	('', 'Arbok'),
	('', 'Pikachu'),
	('', 'Raichu'),
	('', 'Sabelette'),
	('', 'Sablaireau'),
	('', 'Nidoran♀'),
	('', 'NidoranF'),
	('', 'Nidorina'),
	('', 'Nidoqueen'),
	('', 'Nidoran♂'),
	('', 'NidoranM'),
	('', 'Nidorino'),
	('', 'Nidoking'),
	('', 'Melofee'),
	('', 'Melodelfe'),
	('', 'Goupix'),
	('', 'Feunard'),
	('', 'Rondoudou'),
	('', 'Grodoudou'),
	('', 'Nosferapti'),
	('', 'Nosferalto'),
	('', 'Mystherbe'),
	('', 'Ortide'),
	('', 'Rafflesia'),
	('', 'Paras'),
	('', 'Parasect'),
	('', 'Mimitoss'),
	('', 'Aeromite'),
	('', 'Taupiqueur'),
	('', 'Triopikeur'),
	('', 'Miaouss'),
	('', 'Persian'),
	('', 'Psykokwak'),
	('', 'Akwakwak'),
	('', 'Ferosinge'),
	('', 'Colossinge'),
	('', 'Caninos'),
	('', 'Arcanin'),
	('', 'Ptitard'),
	('', 'Tetarte'),
	('', 'Tartard'),
	('', 'Abra'),
	('', 'Kadabra'),
	('', 'Alakazam'),
	('', 'Machoc'),
	('', 'Machopeur'),
	('', 'Mackogneur'),
	('', 'Chetiflor'),
	('', 'Boustiflor'),
	('', 'Empiflor'),
	('', 'Tentacool'),
	('', 'Tentacruel'),
	('', 'Racaillou'),
	('', 'Gravalanch'),
	('', 'Grolem'),
	('', 'Ponyta'),
	('', 'Galopa'),
	('', 'Ramoloss'),
	('', 'Flagadoss'),
	('', 'Magneti'),
	('', 'Magneton'),
	('', 'Canarticho'),
	('', 'Doduo'),
	('', 'Dodrio'),
	('', 'Otaria'),
	('', 'Lamantine'),
	('', 'Tadmorv'),
	('', 'Grotadmorv'),
	('', 'Kokiyas'),
	('', 'Crustabri'),
	('', 'Fantominus'),
	('', 'Spectrum'),
	('', 'Ectoplasma'),
	('', 'Onix'),
	('', 'Soporifik'),
	('', 'Hypnomade'),
	('', 'Krabby'),
	('', 'Krabboss'),
	('', 'Voltorbe'),
	('', 'Electrode'),
	('', 'Noeunoeuf'),
	('', 'Noadkoko'),
	('', 'Osselait'),
	('', 'Ossatueur'),
	('', 'Kicklee'),
	('', 'Tygnon'),
	('', 'Excelangue'),
	('', 'Smogo'),
	('', 'Smogogo'),
	('', 'Rhinocorne'),
	('', 'Rhinoferos'),
	('', 'Leveinard'),
	('', 'Saquedeneu'),
	('', 'Kangourex'),
	('', 'Hypotrempe'),
	('', 'Hypocean'),
	('', 'Poissirene'),
	('', 'Poissoroy'),
	('', 'Stari'),
	('', 'Staross'),
	('', 'M. Mime'),
	('', 'Insecateur'),
	('', 'Lippoutou'),
	('', 'Elektek'),
	('', 'Magmar'),
	('', 'Scarabrute'),
	('', 'Tauros'),
	('', 'Magicarpe'),
	('', 'Leviator'),
	('', 'Lokhlass'),
	('', 'Metamorph'),
	('', 'Evoli'),
	('', 'Aquali'),
	('', 'Voltali'),
	('', 'Pyroli'),
	('', 'Porygon'),
	('', 'Amonita'),
	('', 'Amonistar'),
	('', 'Kabuto'),
	('', 'Kabutops'),
	('', 'Ptera'),
	('', 'Ronflex'),
	('', 'Artikodin'),
	('', 'Electhor'),
	('', 'Sulfura'),
	('', 'Minidraco'),
	('', 'Draco'),
	('', 'Dracolosse'),
	('', 'Mewtwo'),
	('', 'Mew');

INSERT INTO
	types (typ_id, typ_libelle)
VALUES
	('', 'Combat'),
	('', 'Dragon'),
	('', 'Eau'),
	('', 'Electrique'),
	('', 'Feu'),
	('', 'Glace'),
	('', 'Insecte'),
	('', 'Normal'),
	('', 'Plante'),
	('', 'Poison'),
	('', 'Psy'),
	('', 'Roche'),
	('', 'Sol'),
	('', 'Spectre'),
	('', 'Vol');

INSERT INTO
	attaques (
		att_id,
		att_libelle,
		att_type_id,
		att_pp,
		att_puissance,
		att_precision
	)
VALUES
	('', 'Abîme', 13, 5, null, 30),
	('', 'Acid''armure', 10, 40, null, 100),
	('', 'Acide', 10, 30, 40, 100),
	('', 'Adaptation', 8, 40, null, 100),
	('', 'Affûtage', 8, 30, null, 100),
	('', 'Amnésie', 11, 20, null, 100),
	('', 'Armure', 8, 30, null, 100),
	('', 'Balayage', 1, 20, 50, 90),
	('', 'Bec Vrille', 15, 20, 80, 100),
	('', 'Bélier', 8, 20, 90, 85),
	('', 'Berceuse', 8, 15, null, 55),
	('', 'Blizzard', 6, 5, 120, 90),
	('', 'Bomb''oeuf', 8, 10, 100, 75),
	('', 'Bouclier', 11, 30, null, 100),
	('', 'Boul''armure', 8, 20, null, 100),
	('', 'Brouillard', 8, 20, null, 100),
	('', 'Brume', 6, 30, null, 100),
	('', 'Buée noire', 6, 30, null, 100),
	('', 'Bulles d''O', 3, 20, 65, 100),
	('', 'Cage éclair', 4, 20, null, 100),
	('', 'Cascade', 3, 15, 80, 100),
	('', 'Charge', 8, 35, 35, 85),
	('', 'Choc mental', 11, 25, 50, 100),
	('', 'Claquoir', 3, 10, 35, 75),
	('', 'Clonage', 8, 10, null, 100),
	('', 'Combo-griffes', 8, 15, 20, 80),
	('', 'Constriction', 8, 35, 10, 100),
	('', 'Copie', 8, 10, null, 100),
	('', 'Coud''boule', 8, 15, 70, 100),
	('', 'Coud''krâne', 8, 15, 100, 100),
	('', 'Coupe', 8, 30, 50, 95),
	('', 'Coupe-vent', 8, 10, 80, 75),
	('', 'Croc de mort', 8, 15, 80, 70),
	('', 'Croc fatal', 8, 10, null, 90),
	('', 'Croissance', 8, 40, null, 100),
	('', 'Cru-aile', 15, 35, 35, 100),
	('', 'Cyclone', 8, 20, null, 85),
	('', 'Damoclès', 8, 15, 15, 100),
	('', 'Danse-Flamme', 5, 15, 15, 70),
	('', 'Danse-Fleur', 9, 20, 70, 100),
	('', 'Danse-Lames', 8, 30, null, 100),
	('', 'Dard-Nuée', 7, 20, 14, 85),
	('', 'Dard-Venin', 10, 35, 15, 100),
	('', 'Déflagration', 5, 5, 120, 85),
	('', 'Destruction', 8, 5, 260, 100),
	('', 'Détitrus', 10, 20, 65, 100),
	('', 'Dévorêve', 11, 15, 100, 100),
	('', 'Double-Dard', 7, 20, 25, 100),
	('', 'Double-Pied', 1, 30, 30, 100),
	('', 'Draco-Rage', 2, 10, 40, 100),
	('', 'Eboulement', 12, 10, 80, 90),
	('', 'Eclair', 4, 30, 40, 100),
	('', 'E-Coque', 8, 10, null, 100),
	('', 'Ecrasement', 8, 20, 65, 100),
	('', 'Ecras''face', 8, 35, 40, 100),
	('', 'Ecume', 3, 30, 20, 100),
	('', 'Empal''korne', 8, 5, null, 30),
	('', 'Entrave', 8, 20, null, 55),
	('', 'Etreinte', 8, 20, 15, 75),
	('', 'Explosion', 8, 5, 340, 100),
	('', 'Fatale-Foudre', 4, 10, 120, 70),
	('', 'Flammèches', 5, 25, 40, 100),
	('', 'Flash', 8, 20, null, 70),
	('', 'Force', 8, 15, 80, 100),
	('', 'Force-Poigne', 8, 30, 55, 100),
	('', 'Fouet Lianes', 9, 10, 35, 100),
	('', 'Frappe-Atlas', 1, 20, 0, 100),
	('', 'Frénésie', 8, 20, 20, 100),
	('', 'Furie', 8, 20, 15, 85),
	('', 'Gaz Toxik', 10, 40, null, 55),
	('', 'Griffe', 8, 35, 40, 100),
	('', 'Grincement', 8, 40, null, 85),
	('', 'Grobisou', 8, 10, null, 75),
	('', 'Gros''yeux', 8, 30, null, 100),
	('', 'Guillotine', 8, 5, null, 30),
	('', 'Hâte', 11, 30, null, 100),
	('', 'Hurlement', 8, 20, null, 100),
	('', 'Hydrocanon', 3, 5, 120, 80),
	('', 'Hypnose', 11, 20, null, 60),
	('', 'Intimidation', 8, 30, null, 75),
	('', 'Jackpot', 8, 20, 40, 100),
	('', 'Jet de sable', 8, 15, null, 100),
	('', 'Jet de pierres', 12, 15, 50, 75),
	('', 'Koud''korne', 8, 25, 65, 100),
	('', 'Lance-Flamme', 5, 15, 95, 100),
	('', 'Lance-Soleil', 9, 10, 120, 100),
	('', 'Laser-Glace', 6, 10, 95, 100),
	('', 'Léchouille', 14, 30, 20, 100),
	('', 'Ligotage', 8, 20, 15, 85),
	('', 'Liliput', 8, 20, null, 100),
	('', 'Lutte', 8, 1, 100, 100),
	('', 'Mania', 8, 20, 90, 100),
	('', 'Massd''os', 13, 20, 65, 85),
	('', 'Mawashi Geri', 1, 15, 60, 80),
	('', 'Mega-Sangsue', 9, 10, 40, 100),
	('', 'Météores', 8, 20, 60, 100),
	('', 'Métronome', 8, 10, null, 100),
	('', 'Mimique', 15, 20, null, 100),
	('', 'Mimi-Queue', 8, 30, null, 100),
	('', 'Morphing', 8, 10, null, 100),
	('', 'Morsure', 8, 25, 60, 100),
	('', 'Mur Lumière', 11, 30, null, 100),
	('', 'Onde Boréale', 6, 20, 65, 100),
	('', 'Onde Folie', 14, 10, null, 100),
	('', 'Osmerang', 13, 10, 50, 90),
	('', 'Paraspore', 9, 30, null, 75),
	('', 'Patience', 8, 10, null, 100),
	('', 'Picanon', 8, 15, 20, 100),
	('', 'Picpic', 15, 35, 35, 100),
	('', 'Pied Sauté', 1, 25, 70, 95),
	('', 'Pied Voltige', 1, 20, 85, 90),
	('', 'Pilonnage', 8, 20, 15, 85),
	('', 'Pince-Masse', 3, 10, 90, 85),
	('', 'Piqué', 15, 5, 140, 90),
	('', 'Pistolet à O', 3, 20, 40, 100),
	('', 'Plaquage', 8, 15, 85, 100),
	('', 'Poing Comète', 8, 15, 18, 85),
	('', 'Poing de Feu', 5, 15, 75, 100),
	('', 'Poing Karaté', 1, 25, 50, 100),
	('', 'Poing Eclair', 4, 15, 75, 100),
	('', 'Poing Glace', 6, 15, 75, 100),
	('', 'Poudre Dodo', 9, 15, null, 75),
	('', 'Poudre Toxik', 10, 35, null, 75),
	('', 'Protection', 11, 20, null, 100),
	('', 'Psyko', 11, 10, 90, 100),
	('', 'Puissance', 8, 30, null, 100),
	('', 'Purédpois', 10, 20, 20, 70),
	('', 'Rafale Psy', 11, 20, 65, 100),
	('', 'Reflet', 8, 15, null, 100),
	('', 'Repli', 3, 40, null, 100),
	('', 'Repos', 11, 10, null, 100),
	('', 'Riposte', 1, 20, null, 100),
	('', 'Rugissement', 8, 10, null, 100),
	('', 'Sacrifice', 1, 25, 80, 80),
	('', 'Sécrétion', 7, 40, null, 95),
	('', 'Séisme', 13, 10, 100, 100),
	('', 'Soin', 8, 10, null, 100),
	('', 'Sonicboom', 8, 20, 20, 100),
	('', 'Souplesse', 8, 20, 80, 75),
	('', 'Spore', 9, 15, null, 100),
	('', 'Surf', 3, 15, 95, 100),
	('', 'Télékinésie', 11, 15, null, 75),
	('', 'Téléport', 11, 20, null, 100),
	('', 'Ténèbres', 14, 15, 0, 100),
	('', 'Tonnerre', 4, 15, 95, 100),
	('', 'Torgnoles', 8, 10, 15, 85),
	('', 'Tornade', 15, 35, 40, 100),
	('', 'Toxik', 10, 10, null, 85),
	('', 'Tranche', 8, 20, 70, 100),
	('', 'Tranch''herbe', 9, 25, 55, 95),
	('', 'Trempette', 3, 40, null, 100),
	('', 'Triplattaque', 8, 10, 80, 100),
	('', 'Tunnel', 13, 10, 100, 100),
	('', 'Ultimapoing', 8, 20, 80, 85),
	('', 'Ultimawashi', 8, 5, 120, 75),
	('', 'Ultralaser', 8, 5, 120, 90),
	('', 'Ultrason', 8, 20, null, 55),
	('', 'Uppercut', 8, 10, 70, 100),
	('', 'Vague Psy', 11, 15, null, 80),
	('', 'Vampigraine', 9, 10, null, 90),
	('', 'Vampirisme', 7, 15, 20, 100),
	('', 'Vive Attaque', 8, 30, 40, 100),
	('', 'Vol', 15, 15, 70, 95),
	('', 'Vol-vie', 9, 20, 20, 100),
	('', 'Yoga', 11, 40, null, 100);

INSERT INTO
	est_type (est_id, est_pok_id, est_type_id)
VALUES
	('', 1, 9),
	('', 1, 10),
	('', 2, 9),
	('', 2, 10),
	('', 3, 9),
	('', 3, 10),
	('', 4, 5),
	('', 5, 5),
	('', 6, 5),
	('', 6, 15),
	('', 7, 3),
	('', 8, 3),
	('', 9, 3),
	('', 10, 7),
	('', 11, 7),
	('', 12, 7),
	('', 12, 15),
	('', 13, 7),
	('', 13, 10),
	('', 14, 7),
	('', 14, 10),
	('', 15, 7),
	('', 15, 10),
	('', 16, 8),
	('', 16, 15),
	('', 17, 8),
	('', 17, 15),
	('', 18, 8),
	('', 18, 15),
	('', 19, 8),
	('', 20, 8),
	('', 21, 8),
	('', 21, 15),
	('', 22, 8),
	('', 22, 15),
	('', 23, 10),
	('', 24, 10),
	('', 25, 4),
	('', 26, 4),
	('', 27, 13),
	('', 28, 13),
	('', 29, 10),
	('', 30, 10),
	('', 31, 10),
	('', 31, 13),
	('', 32, 10),
	('', 33, 10),
	('', 34, 10),
	('', 34, 13),
	('', 35, 8),
	('', 36, 8),
	('', 37, 5),
	('', 38, 5),
	('', 39, 8),
	('', 40, 8),
	('', 41, 10),
	('', 41, 15),
	('', 42, 10),
	('', 42, 15),
	('', 43, 9),
	('', 43, 10),
	('', 44, 9),
	('', 44, 10),
	('', 45, 9),
	('', 45, 10),
	('', 46, 7),
	('', 46, 9),
	('', 47, 7),
	('', 47, 9),
	('', 48, 7),
	('', 48, 10),
	('', 49, 7),
	('', 49, 10),
	('', 50, 13),
	('', 51, 13),
	('', 52, 8),
	('', 53, 8),
	('', 54, 3),
	('', 55, 3),
	('', 56, 1),
	('', 57, 1),
	('', 58, 5),
	('', 59, 5),
	('', 60, 3),
	('', 61, 3),
	('', 62, 3),
	('', 62, 1),
	('', 63, 11),
	('', 64, 11),
	('', 65, 11),
	('', 66, 1),
	('', 67, 1),
	('', 68, 1),
	('', 69, 9),
	('', 69, 10),
	('', 70, 9),
	('', 70, 10),
	('', 71, 9),
	('', 71, 10),
	('', 72, 3),
	('', 72, 10),
	('', 73, 3),
	('', 73, 10),
	('', 74, 12),
	('', 74, 13),
	('', 75, 12),
	('', 75, 13),
	('', 76, 12),
	('', 76, 13),
	('', 77, 5),
	('', 78, 5),
	('', 79, 3),
	('', 79, 11),
	('', 80, 3),
	('', 80, 11),
	('', 81, 4),
	('', 82, 4),
	('', 83, 8),
	('', 83, 15),
	('', 84, 8),
	('', 84, 15),
	('', 85, 8),
	('', 85, 15),
	('', 86, 3),
	('', 87, 3),
	('', 87, 6),
	('', 88, 10),
	('', 89, 10),
	('', 90, 3),
	('', 91, 3),
	('', 91, 6),
	('', 92, 14),
	('', 92, 10),
	('', 93, 14),
	('', 93, 10),
	('', 94, 14),
	('', 94, 10),
	('', 95, 12),
	('', 95, 13),
	('', 96, 11),
	('', 97, 11),
	('', 98, 3),
	('', 99, 3),
	('', 100, 4),
	('', 101, 4),
	('', 102, 9),
	('', 102, 11),
	('', 103, 9),
	('', 103, 11),
	('', 104, 13),
	('', 105, 13),
	('', 106, 1),
	('', 107, 1),
	('', 108, 8),
	('', 109, 10),
	('', 110, 10),
	('', 111, 13),
	('', 111, 12),
	('', 112, 13),
	('', 112, 12),
	('', 113, 8),
	('', 114, 9),
	('', 115, 8),
	('', 116, 3),
	('', 117, 3),
	('', 118, 3),
	('', 119, 3),
	('', 120, 3),
	('', 121, 3),
	('', 121, 11),
	('', 122, 11),
	('', 123, 7),
	('', 123, 15),
	('', 124, 6),
	('', 124, 11),
	('', 125, 4),
	('', 126, 5),
	('', 127, 7),
	('', 128, 8),
	('', 129, 3),
	('', 130, 3),
	('', 130, 15),
	('', 131, 3),
	('', 131, 6),
	('', 132, 8),
	('', 133, 8),
	('', 134, 3),
	('', 135, 4),
	('', 136, 5),
	('', 137, 8),
	('', 138, 12),
	('', 138, 3),
	('', 139, 12),
	('', 139, 3),
	('', 140, 12),
	('', 140, 3),
	('', 141, 12),
	('', 141, 3),
	('', 142, 12),
	('', 142, 15),
	('', 143, 8),
	('', 144, 6),
	('', 144, 15),
	('', 145, 4),
	('', 145, 15),
	('', 146, 5),
	('', 146, 15),
	('', 147, 2),
	('', 148, 2),
	('', 149, 2),
	('', 149, 15),
	('', 150, 11),
	('', 151, 11);

-- arenes https://www.pokebip.com/page__jeuxvideo__rbvj__champions_arene.html
-- ligue https://www.pokebip.com/page__jeuxvideo__rbvj__conseil4.html
INSERT INTO
	dresseurs (dre_id, dre_nom)
VALUES
	('', 'Pierre'),
	('', 'Ondine'),
	('', 'Major Bob'),
	('', 'Erika'),
	('', 'Koga'),
	('', 'Morgane'),
	('', 'Auguste'),
	('', 'Giovanni'),
	('', 'Olga'),
	('', 'Aldo'),
	('', 'Agatha'),
	('', 'Peter');

INSERT INTO
	detient_pokemons (det_id, det_dresseur, det_pokemon, det_niveau)
VALUES
	-- Pierre: Raccaillou 12, Onix 14 
	('', 2, 74, 12),
	('', 2, 95, 14),
	-- Ondine: Stari 18, Staross 21
	('', 3, 120, 18),
	('', 3, 121, 21),
	-- Major Bob: Voltorbe 21, Pikachu 18, Raichu 24
	('', 4, 100, 21),
	('', 4, 25, 18),
	('', 4, 26, 24),
	-- Erika: Empiflor 29, Saquedeneu 24, Rafflesia 29
	('', 5, 71, 29),
	('', 5, 114, 24),
	('', 5, 45, 29),
	-- Koga: Smogo 37, Grotadmorv 39, Smogo 37, Smogogo 43
	('', 6, 109, 37),
	('', 6, 89, 39),
	('', 6, 109, 37),
	('', 6, 110, 43),
	-- Morgane: Kadabra 38, M.Mime 37, Aeromite 38, Alakazam 43 
	('', 7, 64, 38),
	('', 7, 122, 37),
	('', 7, 49, 38),
	('', 7, 65, 43),
	-- Auguste: Caninos 42, Ponyta 40, Galopa 42, Arcanin 47
	('', 8, 58, 42),
	('', 8, 77, 40),
	('', 8, 78, 42),
	('', 8, 59, 47),
	-- Giovanni: Rhinocorne 45, Triopikeur 42, Nidoqueen 44, Nodiking 45, Rhinoferos 50
	('', 9, 111, 42),
	('', 9, 51, 42),
	('', 9, 31, 44),
	('', 9, 34, 45),
	('', 9, 112, 50),
	-- Olga: Lamantine 54, Crustabri 53, Flagadoss 54, Lippoutou 56, Lokhlass 56
	('', 10, 87, 54),
	('', 10, 91, 53),
	('', 10, 80, 54),
	('', 10, 124, 56),
	('', 10, 131, 56),
	-- Aldo: Onix 53, Tygnon 55, Kicklee 55, Onix 56, Mackogneur 58
	('', 11, 95, 53),
	('', 11, 107, 55),
	('', 11, 106, 55),
	('', 11, 95, 56),
	('', 11, 68, 58),
	-- Agatha: Ectoplasma 56, Nosferalto 56, Spectrum 55, Arbok 58, Ectoplasma 60
	('', 12, 94, 56),
	('', 12, 42, 56),
	('', 12, 93, 55),
	('', 12, 24, 58),
	('', 12, 94, 60),
	-- Peter: Leviator 58, Draco 56,  Draco 56, Ptera 60, Dracolosse 62
	('', 13, 130, 58),
	('', 13, 148, 56),
	('', 13, 148, 56),
	('', 13, 142, 60),
	('', 13, 149, 62);

-- evolutions
INSERT INTO
	evolue_en (evo_id, evo_base_id, evo_poke_id, evo_niveau)
VALUES
	('', 1, 2, 16),
	('', 2, 3, 32),
	('', 4, 5, 16),
	('', 5, 6, 36),
	('', 7, 8, 16),
	('', 8, 9, 36),
	('', 10, 11, 7),
	('', 11, 12, 10),
	('', 13, 14, 7),
	('', 14, 15, 10),
	('', 16, 17, 18),
	('', 17, 18, 36),
	('', 19, 20, 20),
	('', 21, 22, 20),
	('', 23, 24, 22),
	('', 25, 26, -1),
	('', 27, 28, 22),
	('', 29, 30, 16),
	('', 30, 31, -1),
	('', 32, 33, 16),
	('', 33, 34, -1),
	('', 35, 36, -1),
	('', 37, 38, -1),
	('', 39, 40, -1),
	('', 41, 42, 22),
	('', 43, 44, 21),
	('', 44, 45, -1),
	('', 46, 47, 24),
	('', 48, 49, 31),
	('', 50, 51, 26),
	('', 52, 53, 28),
	('', 54, 55, 33),
	('', 56, 57, 28),
	('', 58, 59, -1),
	('', 60, 61, 25),
	('', 61, 62, -1),
	('', 63, 64, 16),
	('', 64, 65, -2),
	('', 66, 67, 28),
	('', 67, 68, -2),
	('', 69, 70, 21),
	('', 70, 71, -1),
	('', 72, 73, 30),
	('', 74, 75, 25),
	('', 75, 76, -2),
	('', 77, 78, 40),
	('', 79, 80, 37),
	('', 81, 82, 30),
	('', 84, 85, 31),
	('', 86, 87, 34),
	('', 88, 89, 38),
	('', 90, 91, -1),
	('', 92, 93, 25),
	('', 93, 94, -2),
	('', 96, 97, 26),
	('', 98, 99, 28),
	('', 100, 101, 30),
	('', 102, 103, -1),
	('', 104, 105, 28),
	('', 109, 110, 35),
	('', 111, 112, 42),
	('', 116, 117, 32),
	('', 118, 119, 33),
	('', 120, 121, -1),
	('', 129, 130, 20),
	('', 133, 134, -1),
	('', 133, 135, -1),
	('', 133, 136, -1),
	('', 138, 139, 40),
	('', 140, 141, 40),
	('', 147, 148, 30),
	('', 148, 149, 55);