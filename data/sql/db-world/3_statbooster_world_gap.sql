UPDATE statbooster_enchant_template SET ilvlmax = ilvlmin + 50;
UPDATE statbooster_enchant_template SET classmask = 16 WHERE classmask = 0;
DELETE FROM statbooster_enchant_template WHERE classmask = 4;