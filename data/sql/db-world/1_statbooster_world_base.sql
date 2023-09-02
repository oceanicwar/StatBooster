DELETE FROM `command` WHERE name='sb';
INSERT INTO `command`(`name`, `security`, `help`) VALUES ('sb', 2, 'Syntax: .sb - type .sb to list subcommands.');

DELETE FROM `command` WHERE name='sb additem';
INSERT INTO `command`(`name`, `security`, `help`) VALUES ('sb additem', 2, 'Syntax: .sb additem <itemid> <count> - tries to add an enchanted item to targeted player.');

DROP TABLE IF EXISTS `statbooster_enchant_template`;
CREATE TABLE IF NOT EXISTS `statbooster_enchant_template` (
  `Id` int(10) unsigned DEFAULT NULL,
  `iLvlMin` int(10) unsigned DEFAULT NULL,
  `iLvlMax` int(10) unsigned DEFAULT NULL,
  `RoleMask` int(10) unsigned DEFAULT NULL,
  `ClassMask` int(10) unsigned DEFAULT NULL,
  `SubClassMask` int(10) unsigned DEFAULT NULL,
  `ItemTypeMask` int(10) unsigned DEFAULT 0,
  `Description` varchar(50) NOT NULL,
  `Note` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `statbooster_enchant_scores`;
CREATE TABLE IF NOT EXISTS `statbooster_enchant_scores` (
  `mod_type` int(11) DEFAULT NULL,
  `mod_id` int(11) DEFAULT NULL,
  `subclass` int(11) DEFAULT NULL,
  `tank_score` int(11) DEFAULT NULL,
  `phys_score` int(11) DEFAULT NULL,
  `spell_score` int(11) DEFAULT NULL,
  `hybrid_score` int(11) DEFAULT NULL,
  `note` varchar(50) NOT NULL,
  PRIMARY KEY (`note`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
