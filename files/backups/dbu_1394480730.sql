DROP TABLE IF EXISTS AreaPermissionAssignments;

CREATE TABLE IF NOT EXISTS `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS AreaPermissionBlockTypeAccessList;

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS AreaPermissionBlockTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Areas;

CREATE TABLE IF NOT EXISTS `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO Areas VALUES(1,105,'Header',0,0,0)
 ,(2,105,'Column 1',0,0,0)
 ,(3,105,'Column 2',0,0,0)
 ,(4,105,'Column 3',0,0,0)
 ,(5,105,'Column 4',0,0,0)
 ,(6,106,'Primary',0,0,0)
 ,(7,106,'Secondary 1',0,0,0)
 ,(8,106,'Secondary 2',0,0,0)
 ,(9,106,'Secondary 3',0,0,0)
 ,(10,106,'Secondary 4',0,0,0)
 ,(11,106,'Secondary 5',0,0,0)
 ,(12,1,'Header Nav',0,0,0)
 ,(13,1,'Header',0,0,0)
 ,(14,1,'Sidebar',0,0,0)
 ,(15,1,'Main',0,0,0)
 ,(16,1,'Contenu',0,0,0)
 ,(17,1,'Menu',0,0,0)
 ,(18,122,'Contenu',0,0,0)
 ,(19,122,'Menu',0,0,0)
 ,(20,124,'Contenu',0,0,0)
 ,(21,124,'Menu',0,0,0)
 ,(22,123,'Contenu',0,0,0)
 ,(23,123,'Menu',0,0,0)
 ,(24,1,'col1',0,0,0)
 ,(25,1,'col2',0,0,0)
 ,(26,1,'col3',0,0,0)
 ,(27,1,'social',0,0,0)
 ,(28,1,'contact',0,0,0)
 ,(29,1,'actualité',0,0,0)
 ,(30,1,'Menu1',0,0,0)
 ,(31,1,'social',0,0,0)
 ,(32,1,'col4',0,0,0)
 ,(33,125,'Menu',0,0,0)
 ,(34,128,'Menu',0,0,0)
 ,(35,122,'col1',0,0,0)
 ,(36,122,'col2',0,0,0)
 ,(37,122,'col3',0,0,0)
 ,(38,122,'social',0,0,0)
 ,(39,122,'contact',0,0,0)
 ,(40,122,'actualité',0,0,0)
 ,(41,122,'Arianne',0,0,0)
 ,(42,122,'Ariane',0,0,0)
 ,(43,123,'Ariane',0,0,0)
 ,(44,124,'Ariane',0,0,0)
 ,(45,122,'Blog',0,0,0)
 ,(46,122,'Plan',0,0,0)
 ,(47,123,'Blog',0,0,0)
 ,(48,123,'Contact',0,0,0)
 ,(49,123,'Plan',0,0,0)
 ,(50,132,'Menu',0,0,0)
 ,(51,132,'Blog',0,0,0)
 ,(52,132,'Contact',0,0,0)
 ,(53,132,'Plan',0,0,0)
 ,(54,124,'Blog',0,0,0)
 ,(55,124,'Contact',0,0,0)
 ,(56,124,'Plan',0,0,0)
 ,(57,122,'Produits',0,0,0)
 ,(58,122,'Produits : Layout 1 : Cell 1',0,0,0)
 ,(59,122,'Produits : Layout 1 : Cell 2',0,0,0)
 ,(60,122,'Produits : Layout 1 : Cell 3',0,0,0)
 ,(61,122,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',0,0,0)
 ,(62,122,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',0,0,0)
 ,(63,122,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 3',0,0,0)
 ,(64,122,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 4',0,0,0)
 ,(65,122,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 5',0,0,0)
 ,(66,122,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 6',0,0,0)
 ,(67,123,'produits',0,0,0)
 ,(68,124,'produits',0,0,0)
 ,(69,132,'produits',0,0,0);

DROP TABLE IF EXISTS atAddress;

CREATE TABLE IF NOT EXISTS `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atAddressCustomCountries;

CREATE TABLE IF NOT EXISTS `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atAddressSettings;

CREATE TABLE IF NOT EXISTS `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atBoolean;

CREATE TABLE IF NOT EXISTS `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atBoolean VALUES(20,1)
 ,(31,1)
 ,(34,1)
 ,(64,1)
 ,(65,1)
 ,(68,1)
 ,(69,1)
 ,(75,1)
 ,(108,1)
 ,(117,1)
 ,(118,1)
 ,(119,1);

DROP TABLE IF EXISTS atBooleanSettings;

CREATE TABLE IF NOT EXISTS `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atBooleanSettings VALUES(5,0)
 ,(6,0)
 ,(8,0)
 ,(9,0)
 ,(10,1)
 ,(11,1);

DROP TABLE IF EXISTS atDateTime;

CREATE TABLE IF NOT EXISTS `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atDateTimeSettings;

CREATE TABLE IF NOT EXISTS `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atDefault;

CREATE TABLE IF NOT EXISTS `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atDefault VALUES(1,'blog, blogging')
 ,(2,'icon-book')
 ,(3,'new blog, write blog, blogging')
 ,(4,'icon-pencil')
 ,(5,'blog drafts, composer')
 ,(6,'icon-book')
 ,(7,'pages, add page, delete page, copy, move, alias')
 ,(8,'pages, add page, delete page, copy, move, alias')
 ,(9,'icon-home')
 ,(10,'pages, add page, delete page, copy, move, alias, bulk')
 ,(11,'icon-road')
 ,(12,'find page, search page, search, find, pages, sitemap')
 ,(13,'icon-search')
 ,(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute')
 ,(15,'icon-picture')
 ,(16,'file, file attributes, title, attribute, description, rename')
 ,(17,'icon-cog')
 ,(18,'files, category, categories')
 ,(19,'icon-list-alt')
 ,(21,'new file set')
 ,(22,'icon-plus-sign')
 ,(23,'users, groups, people, find, delete user, remove user, change password, password')
 ,(24,'find, search, people, delete user, remove user, change password, password')
 ,(25,'icon-user')
 ,(26,'user, group, people, permissions, access, expire')
 ,(27,'icon-globe')
 ,(28,'user attributes, user data, gather data, registration data')
 ,(29,'icon-cog')
 ,(30,'new user, create')
 ,(32,'icon-plus-sign')
 ,(33,'new user group, new group, group, create')
 ,(35,'icon-plus')
 ,(36,'group set')
 ,(37,'icon-list')
 ,(38,'forms, log, error, email, mysql, exception, survey')
 ,(39,'hits, pageviews, visitors, activity')
 ,(40,'icon-signal')
 ,(41,'forms, questions, response, data')
 ,(42,'icon-briefcase')
 ,(43,'questions, quiz, response')
 ,(44,'icon-tasks')
 ,(45,'forms, log, error, email, mysql, exception, survey, history')
 ,(46,'icon-time')
 ,(47,'new theme, theme, active theme, change theme, template, css')
 ,(48,'icon-font')
 ,(49,'theme')
 ,(50,'page types')
 ,(51,'custom theme, change theme, custom css, css')
 ,(52,'page type defaults, global block, global area, starter, template')
 ,(53,'icon-file')
 ,(54,'page attributes, custom')
 ,(55,'icon-cog')
 ,(56,'single, page, custom, application')
 ,(57,'icon-wrench')
 ,(58,'add workflow, remove workflow')
 ,(59,'icon-list')
 ,(60,'icon-user')
 ,(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo')
 ,(62,'icon-th')
 ,(63,'icon-lock')
 ,(66,'block, refresh, custom')
 ,(67,'icon-wrench')
 ,(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks')
 ,(71,'update, upgrade')
 ,(72,'concrete5.org, my account, marketplace')
 ,(73,'buy theme, new theme, marketplace, template')
 ,(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace')
 ,(76,'website name, title')
 ,(77,'logo, favicon, iphone, icon, bookmark')
 ,(78,'tinymce, content block, fonts, editor, content, overlay')
 ,(79,'translate, translation, internationalization, multilingual')
 ,(80,'timezone, profile, locale')
 ,(81,'interface, quick nav, dashboard background, background image')
 ,(82,'vanity, pretty url, seo, pageview, view')
 ,(83,'bulk, seo, change keywords, engine, optimization, search')
 ,(84,'traffic, statistics, google analytics, quant, pageviews, hits')
 ,(85,'pretty, slug')
 ,(86,'turn off statistics, tracking, statistics, pageviews, hits')
 ,(87,'configure search, site search, search option')
 ,(88,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching')
 ,(89,'cache option, turn off cache, no cache, page cache, caching')
 ,(90,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old')
 ,(91,'editors, hide site, offline, private, public, access')
 ,(92,'file options, file manager, upload, modify')
 ,(93,'security, files, media, extension, manager, upload')
 ,(94,'security, actions, administrator, admin, package, marketplace, search')
 ,(95,'security, lock ip, lock out, block ip, address, restrict, access')
 ,(96,'security, registration')
 ,(97,'antispam, block spam, security')
 ,(98,'lock site, under construction, hide, hidden')
 ,(99,'profile, login, redirect, specific, dashboard, administrators')
 ,(100,'member profile, member page, community, forums, social, avatar')
 ,(101,'signup, new user, community')
 ,(102,'smtp, mail settings')
 ,(103,'email server, mail settings, mail configuration, external, internal')
 ,(104,'email server, mail settings, mail configuration, private message, message system, import, email, message')
 ,(105,'attribute configuration')
 ,(106,'attributes, sets')
 ,(107,'attributes, types')
 ,(109,'overrides, system info, debug, support, help')
 ,(110,'errors, exceptions, develop, support, help')
 ,(111,'email, logging, logs, smtp, pop, errors, mysql, log')
 ,(112,'security, alternate storage, hide files')
 ,(113,'network, proxy server')
 ,(114,'export, backup, database, sql, mysql, encryption, restore')
 ,(115,'upgrade, new version, update')
 ,(116,'export, database, xml, starting, points, schema, refresh, custom, tables');

DROP TABLE IF EXISTS atFile;

CREATE TABLE IF NOT EXISTS `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atNumber;

CREATE TABLE IF NOT EXISTS `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atNumber VALUES(120,285.0000)
 ,(121,178.0000)
 ,(122,940.0000)
 ,(123,341.0000)
 ,(124,940.0000)
 ,(125,341.0000)
 ,(126,940.0000)
 ,(127,341.0000)
 ,(128,940.0000)
 ,(129,341.0000)
 ,(130,285.0000)
 ,(131,178.0000)
 ,(132,48.0000)
 ,(133,47.0000);

DROP TABLE IF EXISTS atSelectOptions;

CREATE TABLE IF NOT EXISTS `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atSelectOptionsSelected;

CREATE TABLE IF NOT EXISTS `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atSelectSettings;

CREATE TABLE IF NOT EXISTS `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atTextareaSettings;

CREATE TABLE IF NOT EXISTS `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atTextareaSettings VALUES(2,'')
 ,(3,'')
 ,(4,'')
 ,(7,'');

DROP TABLE IF EXISTS AttributeKeyCategories;

CREATE TABLE IF NOT EXISTS `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO AttributeKeyCategories VALUES(1,'collection',1,NULL)
 ,(2,'user',1,NULL)
 ,(3,'file',1,NULL);

DROP TABLE IF EXISTS AttributeKeys;

CREATE TABLE IF NOT EXISTS `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO AttributeKeys VALUES(1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0)
 ,(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0)
 ,(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0)
 ,(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0)
 ,(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0)
 ,(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0)
 ,(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0)
 ,(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0)
 ,(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0)
 ,(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0)
 ,(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0)
 ,(12,'width','Width',1,1,0,0,0,1,6,3,0)
 ,(13,'height','Height',1,1,0,0,0,1,6,3,0)
 ,(14,'duration','Duration',1,1,0,0,0,1,6,3,0);

DROP TABLE IF EXISTS AttributeSetKeys;

CREATE TABLE IF NOT EXISTS `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO AttributeSetKeys VALUES(1,1,1)
 ,(2,1,2)
 ,(3,1,3)
 ,(5,2,1)
 ,(6,2,2)
 ,(7,1,4)
 ,(8,2,3)
 ,(9,2,4);

DROP TABLE IF EXISTS AttributeSets;

CREATE TABLE IF NOT EXISTS `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO AttributeSets VALUES(1,'Page Header','page_header',1,0,0,0)
 ,(2,'Navigation and Indexing','navigation',1,0,0,1);

DROP TABLE IF EXISTS AttributeTypeCategories;

CREATE TABLE IF NOT EXISTS `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO AttributeTypeCategories VALUES(1,1)
 ,(1,2)
 ,(1,3)
 ,(2,1)
 ,(2,2)
 ,(2,3)
 ,(3,1)
 ,(3,2)
 ,(3,3)
 ,(4,1)
 ,(4,2)
 ,(4,3)
 ,(5,1)
 ,(6,1)
 ,(6,2)
 ,(6,3)
 ,(7,1)
 ,(7,3)
 ,(8,1)
 ,(8,2)
 ,(8,3)
 ,(9,2);

DROP TABLE IF EXISTS AttributeTypes;

CREATE TABLE IF NOT EXISTS `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO AttributeTypes VALUES(1,'text','Text',0)
 ,(2,'textarea','Text Area',0)
 ,(3,'boolean','Checkbox',0)
 ,(4,'date_time','Date/Time',0)
 ,(5,'image_file','Image/File',0)
 ,(6,'number','Number',0)
 ,(7,'rating','Rating',0)
 ,(8,'select','Select',0)
 ,(9,'address','Address',0);

DROP TABLE IF EXISTS AttributeValues;

CREATE TABLE IF NOT EXISTS `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

INSERT INTO AttributeValues VALUES(1,3,'2014-01-21 13:15:19',1,2)
 ,(2,4,'2014-01-21 13:15:20',1,2)
 ,(3,3,'2014-01-21 13:15:20',1,2)
 ,(4,4,'2014-01-21 13:15:20',1,2)
 ,(5,3,'2014-01-21 13:15:20',1,2)
 ,(6,4,'2014-01-21 13:15:20',1,2)
 ,(7,3,'2014-01-21 13:15:20',1,2)
 ,(8,3,'2014-01-21 13:15:21',1,2)
 ,(9,4,'2014-01-21 13:15:21',1,2)
 ,(10,3,'2014-01-21 13:15:21',1,2)
 ,(11,4,'2014-01-21 13:15:21',1,2)
 ,(12,3,'2014-01-21 13:15:21',1,2)
 ,(13,4,'2014-01-21 13:15:21',1,2)
 ,(14,3,'2014-01-21 13:15:21',1,2)
 ,(15,4,'2014-01-21 13:15:21',1,2)
 ,(16,3,'2014-01-21 13:15:22',1,2)
 ,(17,4,'2014-01-21 13:15:22',1,2)
 ,(18,3,'2014-01-21 13:15:22',1,2)
 ,(19,4,'2014-01-21 13:15:22',1,2)
 ,(20,5,'2014-01-21 13:15:22',1,3)
 ,(21,3,'2014-01-21 13:15:22',1,2)
 ,(22,4,'2014-01-21 13:15:22',1,2)
 ,(23,3,'2014-01-21 13:15:23',1,2)
 ,(24,3,'2014-01-21 13:15:23',1,2)
 ,(25,4,'2014-01-21 13:15:23',1,2)
 ,(26,3,'2014-01-21 13:15:23',1,2)
 ,(27,4,'2014-01-21 13:15:23',1,2)
 ,(28,3,'2014-01-21 13:15:23',1,2)
 ,(29,4,'2014-01-21 13:15:23',1,2)
 ,(30,3,'2014-01-21 13:15:24',1,2)
 ,(31,5,'2014-01-21 13:15:24',1,3)
 ,(32,4,'2014-01-21 13:15:24',1,2)
 ,(33,3,'2014-01-21 13:15:24',1,2)
 ,(34,5,'2014-01-21 13:15:24',1,3)
 ,(35,4,'2014-01-21 13:15:24',1,2)
 ,(36,3,'2014-01-21 13:15:25',1,2)
 ,(37,4,'2014-01-21 13:15:25',1,2)
 ,(38,3,'2014-01-21 13:15:25',1,2)
 ,(39,3,'2014-01-21 13:15:25',1,2)
 ,(40,4,'2014-01-21 13:15:25',1,2)
 ,(41,3,'2014-01-21 13:15:25',1,2)
 ,(42,4,'2014-01-21 13:15:25',1,2)
 ,(43,3,'2014-01-21 13:15:25',1,2)
 ,(44,4,'2014-01-21 13:15:26',1,2)
 ,(45,3,'2014-01-21 13:15:26',1,2)
 ,(46,4,'2014-01-21 13:15:26',1,2)
 ,(47,3,'2014-01-21 13:15:26',1,2)
 ,(48,4,'2014-01-21 13:15:26',1,2)
 ,(49,3,'2014-01-21 13:15:26',1,2)
 ,(50,3,'2014-01-21 13:15:26',1,2)
 ,(51,3,'2014-01-21 13:15:27',1,2)
 ,(52,3,'2014-01-21 13:15:27',1,2)
 ,(53,4,'2014-01-21 13:15:27',1,2)
 ,(54,3,'2014-01-21 13:15:27',1,2)
 ,(55,4,'2014-01-21 13:15:27',1,2)
 ,(56,3,'2014-01-21 13:15:27',1,2)
 ,(57,4,'2014-01-21 13:15:27',1,2)
 ,(58,3,'2014-01-21 13:15:27',1,2)
 ,(59,4,'2014-01-21 13:15:28',1,2)
 ,(60,4,'2014-01-21 13:15:28',1,2)
 ,(61,3,'2014-01-21 13:15:28',1,2)
 ,(62,4,'2014-01-21 13:15:28',1,2)
 ,(63,4,'2014-01-21 13:15:28',1,2)
 ,(64,5,'2014-01-21 13:15:28',1,3)
 ,(65,8,'2014-01-21 13:15:28',1,3)
 ,(66,3,'2014-01-21 13:15:29',1,2)
 ,(67,4,'2014-01-21 13:15:29',1,2)
 ,(68,5,'2014-01-21 13:15:29',1,3)
 ,(69,5,'2014-01-21 13:15:29',1,3)
 ,(70,3,'2014-01-21 13:15:29',1,2)
 ,(71,3,'2014-01-21 13:15:29',1,2)
 ,(72,3,'2014-01-21 13:15:29',1,2)
 ,(73,3,'2014-01-21 13:15:29',1,2)
 ,(74,3,'2014-01-21 13:15:30',1,2)
 ,(75,5,'2014-01-21 13:15:30',1,3)
 ,(76,3,'2014-01-21 13:15:30',1,2)
 ,(77,3,'2014-01-21 13:15:30',1,2)
 ,(78,3,'2014-01-21 13:15:30',1,2)
 ,(79,3,'2014-01-21 13:15:30',1,2)
 ,(80,3,'2014-01-21 13:15:30',1,2)
 ,(81,3,'2014-01-21 13:15:30',1,2)
 ,(82,3,'2014-01-21 13:15:30',1,2)
 ,(83,3,'2014-01-21 13:15:31',1,2)
 ,(84,3,'2014-01-21 13:15:31',1,2)
 ,(85,3,'2014-01-21 13:15:31',1,2)
 ,(86,3,'2014-01-21 13:15:31',1,2)
 ,(87,3,'2014-01-21 13:15:31',1,2)
 ,(88,3,'2014-01-21 13:15:31',1,2)
 ,(89,3,'2014-01-21 13:15:31',1,2)
 ,(90,3,'2014-01-21 13:15:31',1,2)
 ,(91,3,'2014-01-21 13:15:32',1,2)
 ,(92,3,'2014-01-21 13:15:32',1,2)
 ,(93,3,'2014-01-21 13:15:32',1,2)
 ,(94,3,'2014-01-21 13:15:32',1,2)
 ,(95,3,'2014-01-21 13:15:32',1,2)
 ,(96,3,'2014-01-21 13:15:32',1,2)
 ,(97,3,'2014-01-21 13:15:32',1,2)
 ,(98,3,'2014-01-21 13:15:32',1,2)
 ,(99,3,'2014-01-21 13:15:33',1,2)
 ,(100,3,'2014-01-21 13:15:33',1,2)
 ,(101,3,'2014-01-21 13:15:33',1,2)
 ,(102,3,'2014-01-21 13:15:33',1,2)
 ,(103,3,'2014-01-21 13:15:33',1,2)
 ,(104,3,'2014-01-21 13:15:33',1,2)
 ,(105,3,'2014-01-21 13:15:33',1,2)
 ,(106,3,'2014-01-21 13:15:33',1,2)
 ,(107,3,'2014-01-21 13:15:33',1,2)
 ,(108,8,'2014-01-21 13:15:34',1,3)
 ,(109,3,'2014-01-21 13:15:34',1,2)
 ,(110,3,'2014-01-21 13:15:34',1,2)
 ,(111,3,'2014-01-21 13:15:34',1,2)
 ,(112,3,'2014-01-21 13:15:34',1,2)
 ,(113,3,'2014-01-21 13:15:34',1,2)
 ,(114,3,'2014-01-21 13:15:35',1,2)
 ,(115,3,'2014-01-21 13:15:35',1,2)
 ,(116,3,'2014-01-21 13:15:35',1,2)
 ,(117,5,'2014-01-21 13:15:36',1,3)
 ,(118,5,'2014-01-21 13:15:38',1,3)
 ,(119,8,'2014-01-21 13:15:38',1,3)
 ,(120,12,'2014-03-10 13:19:48',1,6)
 ,(121,13,'2014-03-10 13:19:48',1,6)
 ,(122,12,'2014-03-10 13:34:35',1,6)
 ,(123,13,'2014-03-10 13:34:35',1,6)
 ,(124,12,'2014-03-10 13:42:15',1,6)
 ,(125,13,'2014-03-10 13:42:15',1,6)
 ,(126,12,'2014-03-10 17:42:23',1,6)
 ,(127,13,'2014-03-10 17:42:23',1,6)
 ,(128,12,'2014-03-10 17:43:06',1,6)
 ,(129,13,'2014-03-10 17:43:06',1,6)
 ,(130,12,'2014-03-10 17:47:32',1,6)
 ,(131,13,'2014-03-10 17:47:32',1,6)
 ,(132,12,'2014-03-10 17:53:22',1,6)
 ,(133,13,'2014-03-10 17:53:22',1,6);

DROP TABLE IF EXISTS BasicWorkflowPermissionAssignments;

CREATE TABLE IF NOT EXISTS `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BasicWorkflowProgressData;

CREATE TABLE IF NOT EXISTS `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockPermissionAssignments;

CREATE TABLE IF NOT EXISTS `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockRelations;

CREATE TABLE IF NOT EXISTS `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO BlockRelations VALUES(1,15,13,'DUPLICATE')
 ,(2,18,15,'DUPLICATE')
 ,(3,22,21,'DUPLICATE')
 ,(4,28,19,'DUPLICATE')
 ,(5,50,18,'DUPLICATE')
 ,(13,63,62,'DUPLICATE')
 ,(14,64,63,'DUPLICATE')
 ,(15,76,75,'DUPLICATE')
 ,(16,77,76,'DUPLICATE')
 ,(17,78,57,'DUPLICATE')
 ,(18,79,57,'DUPLICATE')
 ,(19,80,57,'DUPLICATE');

DROP TABLE IF EXISTS Blocks;

CREATE TABLE IF NOT EXISTS `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

INSERT INTO Blocks VALUES(1,'','2014-01-21 13:15:35','2014-01-21 13:15:35',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"1\";i:1;s:161:\"	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add Pages using in-context editing.</h2></div>\n						\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"1\";s:7:\"content\";s:161:\"	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add Pages using in-context editing.</h2></div>\n						\";}')
 ,(2,'','2014-01-21 13:15:35','2014-01-21 13:15:36',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"2\";i:1;s:327:\"<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"2\";s:7:\"content\";s:327:\"<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>\";}')
 ,(3,'','2014-01-21 13:15:36','2014-01-21 13:15:36',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"3\";i:1;s:368:\"<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"3\";s:7:\"content\";s:368:\"<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>\";}')
 ,(4,'','2014-01-21 13:15:36','2014-01-21 13:15:36',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"4\";i:1;s:323:\"<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"4\";s:7:\"content\";s:323:\"<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>\";}')
 ,(5,'','2014-01-21 13:15:36','2014-01-21 13:15:36',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"5\";i:1;s:346:\"\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"5\";s:7:\"content\";s:346:\"\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>\";}')
 ,(6,'','2014-01-21 13:15:37','2014-01-21 13:15:37',NULL,'1',6,1,NULL)
 ,(7,'','2014-01-21 13:15:37','2014-01-21 13:15:37',NULL,'1',7,1,NULL)
 ,(8,'','2014-01-21 13:15:37','2014-01-21 13:15:37',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"8\";i:1;s:1:\"A\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"8\";s:4:\"slot\";s:1:\"A\";}')
 ,(9,'','2014-01-21 13:15:37','2014-01-21 13:15:37',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"B\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"9\";s:4:\"slot\";s:1:\"B\";}')
 ,(10,'','2014-01-21 13:15:37','2014-01-21 13:15:37',NULL,'1',4,1,NULL)
 ,(11,'','2014-01-21 13:15:37','2014-01-21 13:15:38',NULL,'1',3,1,NULL)
 ,(12,'','2014-01-21 13:15:38','2014-01-21 13:15:38',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"12\";i:1;s:1:\"C\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"12\";s:4:\"slot\";s:1:\"C\";}')
 ,(13,NULL,'2014-01-21 13:58:59','2014-01-21 13:58:59',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"13\";i:1;s:108:\"<h1><strong>Bienvenue sur mon Blog!</strong></h1>\r\n<p> </p>\r\n<p>ffsdgfd dfhg dfkg kdfg dfbgfdkd fkl fsl</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"13\";s:7:\"content\";s:108:\"<h1><strong>Bienvenue sur mon Blog!</strong></h1>\r\n<p> </p>\r\n<p>ffsdgfd dfhg dfkg kdfg dfbgfdkd fkl fsl</p>\";}')
 ,(14,NULL,'2014-01-21 14:31:20','2014-01-21 14:31:20',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"14\";i:1;s:206:\"            <h2>Menu</h2>\r\n            \r\n            <ul>\r\n                <li><a href=\"index.php\">Accueil</a></li>\r\n                <li><a href=\"article.php\">Rédiger un article</a></li>\r\n            </ul>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"14\";s:7:\"content\";s:206:\"            <h2>Menu</h2>\r\n            \r\n            <ul>\r\n                <li><a href=\"index.php\">Accueil</a></li>\r\n                <li><a href=\"article.php\">Rédiger un article</a></li>\r\n            </ul>\";}')
 ,(15,NULL,'2014-01-21 14:55:15','2014-01-21 14:55:15',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"15\";i:1;s:2424:\"<h3><strong>Bienvenue sur mon Blog!</strong></h3>\r\n<p> </p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in pulvinar risus, vulputate rutrum tellus. Duis elit nisl, dictum id viverra sit amet, tempor vel mi. Praesent placerat nibh nunc, vel pellentesque mi mattis vel. Vestibulum eu cursus est. Aenean quis elit nec magna tincidunt facilisis interdum a lacus. Quisque adipiscing ante et malesuada dignissim. Donec hendrerit sapien sit amet sem luctus vestibulum. Morbi turpis odio, malesuada vitae odio vitae, vulputate consequat sapien. Morbi porta ultrices dui quis accumsan. Suspendisse euismod vestibulum metus, a egestas massa imperdiet sed.</p>\r\n<p>Nulla felis sem, varius non sagittis et, molestie ac dolor. Praesent quis auctor ante. Nam tristique risus ligula. Aliquam non est sit amet tortor luctus rutrum et non ipsum. Nulla facilisi. Mauris augue mauris, pellentesque sit amet nulla vel, luctus mattis ligula. Sed tincidunt bibendum tortor nec tempor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum blandit ligula ac ligula volutpat, id sagittis nibh blandit. Fusce egestas urna est, vitae porttitor massa placerat condimentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel augue libero. Mauris elementum molestie tortor quis rhoncus.</p>\r\n<p>Etiam iaculis varius nibh ut semper. Mauris lobortis, magna ut ornare posuere, metus felis tempor tellus, id semper lectus velit dapibus felis. Vivamus sed semper massa. Praesent sit amet euismod libero, ut euismod neque. Nulla a consequat nisi. Nullam et libero et ante cursus interdum. Nullam commodo lacinia gravida.</p>\r\n<p>Donec pellentesque turpis id purus congue condimentum. Aenean cursus at libero a blandit. Aenean vulputate dolor at mauris mollis convallis. Praesent nec mi sollicitudin, ultrices ligula elementum, mollis velit. Praesent dapibus vitae dolor quis sagittis. Donec commodo vitae nunc a aliquam. Cras viverra, enim sed adipiscing viverra, velit arcu pulvinar turpis, ac tincidunt turpis neque ut lorem. Integer ullamcorper sapien vel est consectetur imperdiet. Donec lorem ante, scelerisque quis ipsum nec, ultrices facilisis urna. Suspendisse in posuere sem. Pellentesque id ornare dolor, in tincidunt enim. Nam semper nec eros non tempor. Donec sed rutru</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"15\";s:7:\"content\";s:2424:\"<h3><strong>Bienvenue sur mon Blog!</strong></h3>\r\n<p> </p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in pulvinar risus, vulputate rutrum tellus. Duis elit nisl, dictum id viverra sit amet, tempor vel mi. Praesent placerat nibh nunc, vel pellentesque mi mattis vel. Vestibulum eu cursus est. Aenean quis elit nec magna tincidunt facilisis interdum a lacus. Quisque adipiscing ante et malesuada dignissim. Donec hendrerit sapien sit amet sem luctus vestibulum. Morbi turpis odio, malesuada vitae odio vitae, vulputate consequat sapien. Morbi porta ultrices dui quis accumsan. Suspendisse euismod vestibulum metus, a egestas massa imperdiet sed.</p>\r\n<p>Nulla felis sem, varius non sagittis et, molestie ac dolor. Praesent quis auctor ante. Nam tristique risus ligula. Aliquam non est sit amet tortor luctus rutrum et non ipsum. Nulla facilisi. Mauris augue mauris, pellentesque sit amet nulla vel, luctus mattis ligula. Sed tincidunt bibendum tortor nec tempor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum blandit ligula ac ligula volutpat, id sagittis nibh blandit. Fusce egestas urna est, vitae porttitor massa placerat condimentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel augue libero. Mauris elementum molestie tortor quis rhoncus.</p>\r\n<p>Etiam iaculis varius nibh ut semper. Mauris lobortis, magna ut ornare posuere, metus felis tempor tellus, id semper lectus velit dapibus felis. Vivamus sed semper massa. Praesent sit amet euismod libero, ut euismod neque. Nulla a consequat nisi. Nullam et libero et ante cursus interdum. Nullam commodo lacinia gravida.</p>\r\n<p>Donec pellentesque turpis id purus congue condimentum. Aenean cursus at libero a blandit. Aenean vulputate dolor at mauris mollis convallis. Praesent nec mi sollicitudin, ultrices ligula elementum, mollis velit. Praesent dapibus vitae dolor quis sagittis. Donec commodo vitae nunc a aliquam. Cras viverra, enim sed adipiscing viverra, velit arcu pulvinar turpis, ac tincidunt turpis neque ut lorem. Integer ullamcorper sapien vel est consectetur imperdiet. Donec lorem ante, scelerisque quis ipsum nec, ultrices facilisis urna. Suspendisse in posuere sem. Pellentesque id ornare dolor, in tincidunt enim. Nam semper nec eros non tempor. Donec sed rutru</p>\";}')
 ,(16,NULL,'2014-01-27 12:29:21','2014-01-27 12:29:21',NULL,'1',8,1,'O:11:\"BlockRecord\":18:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:12:\"btNavigation\";s:8:\"_tableat\";s:12:\"btNavigation\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:9:{i:0;s:2:\"16\";i:1;s:11:\"display_asc\";i:2;s:3:\"top\";i:3;i:0;i:4;i:0;i:5;s:4:\"none\";i:6;s:6:\"enough\";i:7;i:0;i:8;i:0;}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"16\";s:7:\"orderBy\";s:11:\"display_asc\";s:12:\"displayPages\";s:3:\"top\";s:15:\"displayPagesCID\";i:0;s:23:\"displayPagesIncludeSelf\";i:0;s:15:\"displaySubPages\";s:4:\"none\";s:20:\"displaySubPageLevels\";s:6:\"enough\";s:23:\"displaySubPageLevelsNum\";i:0;s:23:\"displayUnavailablePages\";i:0;}')
 ,(17,NULL,'2014-01-27 12:35:36','2014-01-27 12:35:36',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"17\";i:1;s:2:\"16\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"17\";s:11:\"bOriginalID\";s:2:\"16\";}')
 ,(18,NULL,'2014-02-18 14:39:58','2014-02-18 14:42:39',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"18\";i:1;s:721:\"<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do.</h4>\r\n</div>\r\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\" alt=\"\" /></div>\r\n<div class=\"text-col\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p>\r\n</div>\r\n<p><a class=\"pure-button\" href=\"#\">Learn more →</a></p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"18\";s:7:\"content\";s:721:\"<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do.</h4>\r\n</div>\r\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\" alt=\"\" /></div>\r\n<div class=\"text-col\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p>\r\n</div>\r\n<p><a class=\"pure-button\" href=\"#\">Learn more →</a></p>\";}')
 ,(19,NULL,'2014-02-18 14:49:30','2014-02-18 14:49:30',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"19\";i:1;s:152:\"<div class=\"titre-col\">\r\n<h3>Complete Solution</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>A tool anything and everything you can think</h4>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"19\";s:7:\"content\";s:152:\"<div class=\"titre-col\">\r\n<h3>Complete Solution</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>A tool anything and everything you can think</h4>\r\n</div>\";}')
 ,(20,NULL,'2014-02-18 14:51:51','2014-02-18 14:51:51',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"20\";i:1;s:101:\"<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"20\";s:7:\"content\";s:101:\"<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>\";}')
 ,(21,NULL,'2014-02-18 14:52:18','2014-02-18 14:52:18',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"21\";i:1;s:468:\"				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n				<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"21\";s:7:\"content\";s:468:\"				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n				<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}')
 ,(22,NULL,'2014-03-10 09:20:21','2014-03-10 09:20:21',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"22\";i:1;s:410:\"<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"22\";s:7:\"content\";s:410:\"<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n\";}')
 ,(23,NULL,'2014-03-10 09:20:42','2014-03-10 09:20:42',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"23\";i:1;s:50:\"<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"23\";s:7:\"content\";s:50:\"<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}')
 ,(24,NULL,'2014-03-10 09:23:42','2014-03-10 09:30:28',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"24\";i:1;s:152:\"				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"24\";s:7:\"content\";s:152:\"				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div>\";}')
 ,(25,NULL,'2014-03-10 09:24:30','2014-03-10 09:24:30',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"25\";i:1;s:101:\"<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"25\";s:7:\"content\";s:101:\"<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>\";}')
 ,(26,NULL,'2014-03-10 09:26:34','2014-03-10 09:26:45',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"26\";i:1;s:416:\"\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"26\";s:7:\"content\";s:416:\"\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n\";}')
 ,(27,NULL,'2014-03-10 09:27:12','2014-03-10 09:27:12',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"27\";i:1;s:50:\"<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"27\";s:7:\"content\";s:50:\"<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}')
 ,(28,NULL,'2014-03-10 09:29:22','2014-03-10 09:29:23',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"28\";i:1;s:135:\"<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"28\";s:7:\"content\";s:135:\"<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>\";}')
 ,(29,NULL,'2014-03-10 10:06:36','2014-03-10 10:06:36',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"29\";i:1;s:140:\"							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"29\";s:7:\"content\";s:140:\"							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div>\";}')
 ,(30,NULL,'2014-03-10 10:07:10','2014-03-10 10:07:10',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"30\";i:1;s:101:\"<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"30\";s:7:\"content\";s:101:\"<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>\";}')
 ,(31,NULL,'2014-03-10 10:07:28','2014-03-10 10:07:40',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"31\";i:1;s:410:\"<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"31\";s:7:\"content\";s:410:\"<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n\";}')
 ,(33,NULL,'2014-03-10 10:08:22','2014-03-10 10:08:22',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"33\";i:1;s:50:\"<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"33\";s:7:\"content\";s:50:\"<a class=\"pure-button\" href=\"#\">Learn more →</a>\";}')
 ,(34,NULL,'2014-03-10 10:24:50','2014-03-10 10:24:50',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"34\";i:1;s:56:\"<div class=\"titre-col2\"><h3>Social Connection</h3></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"34\";s:7:\"content\";s:56:\"<div class=\"titre-col2\"><h3>Social Connection</h3></div>\";}')
 ,(35,NULL,'2014-03-10 10:25:12','2014-03-10 10:25:12',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"35\";i:1;s:125:\"<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"35\";s:7:\"content\";s:125:\"<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div>\";}')
 ,(36,NULL,'2014-03-10 10:27:35','2014-03-10 10:27:35',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"36\";i:1;s:70:\"<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\">\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"36\";s:7:\"content\";s:70:\"<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\">\";}')
 ,(37,NULL,'2014-03-10 10:28:05','2014-03-10 10:28:05',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"37\";i:1;s:125:\"<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"37\";s:7:\"content\";s:125:\"<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div>\";}')
 ,(38,NULL,'2014-03-10 10:28:27','2014-03-10 10:28:27',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"38\";i:1;s:130:\"				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"38\";s:7:\"content\";s:130:\"				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form>\";}')
 ,(39,NULL,'2014-03-10 10:28:49','2014-03-10 10:28:49',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"39\";i:1;s:94:\"<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"39\";s:7:\"content\";s:94:\"<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a>\";}')
 ,(40,NULL,'2014-03-10 10:30:43','2014-03-10 10:30:43',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"40\";i:1;s:49:\"<div class=\"titre-col2\"><h3>Newsletter</h3></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"40\";s:7:\"content\";s:49:\"<div class=\"titre-col2\"><h3>Newsletter</h3></div>\";}')
 ,(41,NULL,'2014-03-10 10:32:51','2014-03-10 10:32:51',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"41\";i:1;s:46:\"<div class=\"titre-col2\"><h3>Contact</h3></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"41\";s:7:\"content\";s:46:\"<div class=\"titre-col2\"><h3>Contact</h3></div>\";}')
 ,(42,NULL,'2014-03-10 10:33:09','2014-03-10 10:33:09',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"42\";i:1;s:371:\"<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"42\";s:7:\"content\";s:371:\"<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form>\";}')
 ,(43,NULL,'2014-03-10 10:33:45','2014-03-10 10:33:45',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"43\";i:1;s:67:\"<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"43\";s:7:\"content\";s:67:\"<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a>\";}')
 ,(44,NULL,'2014-03-10 10:35:36','2014-03-10 10:35:36',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"44\";i:1;s:51:\"<div class=\"titre-col2\"><h3>News Updates</h3></div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"44\";s:7:\"content\";s:51:\"<div class=\"titre-col2\"><h3>News Updates</h3></div>\";}')
 ,(45,NULL,'2014-03-10 10:36:13','2014-03-10 10:36:58',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"45\";i:1;s:217:\"				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"45\";s:7:\"content\";s:217:\"				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div>\";}')
 ,(46,NULL,'2014-03-10 10:37:19','2014-03-10 10:37:19',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"46\";i:1;s:2:\"45\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"46\";s:11:\"bOriginalID\";s:2:\"45\";}')
 ,(47,NULL,'2014-03-10 10:37:26','2014-03-10 10:37:26',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"47\";i:1;s:2:\"45\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"47\";s:11:\"bOriginalID\";s:2:\"45\";}')
 ,(48,NULL,'2014-03-10 10:38:07','2014-03-10 10:38:07',NULL,'1',17,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"48\";i:1;s:74:\"<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"48\";s:7:\"content\";s:74:\"<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a>\";}')
 ,(49,NULL,'2014-03-10 11:28:53','2014-03-10 11:28:53',NULL,'1',8,1,'O:11:\"BlockRecord\":18:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:12:\"btNavigation\";s:8:\"_tableat\";s:12:\"btNavigation\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:9:{i:0;s:2:\"49\";i:1;s:11:\"display_asc\";i:2;s:3:\"top\";i:3;i:0;i:4;i:0;i:5;s:4:\"none\";i:6;s:6:\"enough\";i:7;i:0;i:8;i:0;}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"49\";s:7:\"orderBy\";s:11:\"display_asc\";s:12:\"displayPages\";s:3:\"top\";s:15:\"displayPagesCID\";i:0;s:23:\"displayPagesIncludeSelf\";i:0;s:15:\"displaySubPages\";s:4:\"none\";s:20:\"displaySubPageLevels\";s:6:\"enough\";s:23:\"displaySubPageLevelsNum\";i:0;s:23:\"displayUnavailablePages\";i:0;}')
 ,(50,NULL,'2014-03-10 12:14:08','2014-03-10 12:14:08',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"50\";i:1;s:0:\"\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"50\";s:7:\"content\";s:0:\"\";}')
 ,(57,NULL,'2014-03-10 13:20:18','2014-03-10 13:20:18',NULL,'1',18,1,NULL)
 ,(58,NULL,'2014-03-10 13:21:28','2014-03-10 13:21:28',NULL,'1',1,1,NULL)
 ,(59,NULL,'2014-03-10 13:21:39','2014-03-10 13:21:39',NULL,'1',1,1,NULL)
 ,(60,NULL,'2014-03-10 13:35:01','2014-03-10 13:35:01',NULL,'1',23,1,NULL)
 ,(62,NULL,'2014-03-10 13:42:28','2014-03-10 13:42:28',NULL,'1',23,1,NULL)
 ,(63,NULL,'2014-03-10 13:47:13','2014-03-10 13:47:13',NULL,'1',23,1,NULL)
 ,(64,NULL,'2014-03-10 13:49:58','2014-03-10 13:49:58',NULL,'1',23,1,NULL)
 ,(67,NULL,'2014-03-10 14:31:59','2014-03-10 14:31:59',NULL,'1',9,1,NULL)
 ,(68,NULL,'2014-03-10 14:34:41','2014-03-10 14:34:41',NULL,'1',8,1,NULL)
 ,(69,NULL,'2014-03-10 14:42:24','2014-03-10 14:42:24',NULL,'1',15,1,NULL)
 ,(70,NULL,'2014-03-10 14:43:02','2014-03-10 14:44:10',NULL,'1',9,1,NULL)
 ,(71,NULL,'2014-03-10 14:47:21','2014-03-10 14:47:21',NULL,'1',20,1,NULL)
 ,(72,NULL,'2014-03-10 14:48:39','2014-03-10 14:48:39',NULL,'1',1,1,NULL)
 ,(73,NULL,'2014-03-10 17:24:24','2014-03-10 17:24:24',NULL,'1',1,1,NULL)
 ,(74,NULL,'2014-03-10 17:31:30','2014-03-10 17:31:30',NULL,'1',27,1,NULL)
 ,(75,NULL,'2014-03-10 17:40:50','2014-03-10 17:41:05',NULL,'1',23,1,NULL)
 ,(76,NULL,'2014-03-10 17:43:24','2014-03-10 17:43:24',NULL,'1',23,1,NULL)
 ,(77,NULL,'2014-03-10 17:45:24','2014-03-10 17:45:24',NULL,'1',23,1,NULL)
 ,(78,NULL,'2014-03-10 17:47:09','2014-03-10 17:47:38',NULL,'1',18,1,NULL)
 ,(79,NULL,'2014-03-10 17:47:50','2014-03-10 17:47:50',NULL,'1',18,1,NULL)
 ,(80,NULL,'2014-03-10 17:47:59','2014-03-10 17:48:00',NULL,'1',18,1,NULL)
 ,(82,NULL,'2014-03-10 17:53:30','2014-03-10 17:53:30',NULL,'1',18,1,NULL)
 ,(83,NULL,'2014-03-10 17:54:23','2014-03-10 17:54:35',NULL,'1',9,1,NULL)
 ,(84,NULL,'2014-03-10 17:55:09','2014-03-10 17:55:09',NULL,'1',18,1,NULL)
 ,(85,NULL,'2014-03-10 17:55:23','2014-03-10 17:55:23',NULL,'1',18,1,NULL)
 ,(86,NULL,'2014-03-10 17:55:34','2014-03-10 17:55:34',NULL,'1',9,1,NULL)
 ,(87,NULL,'2014-03-10 17:55:42','2014-03-10 17:55:42',NULL,'1',9,1,NULL)
 ,(88,NULL,'2014-03-10 17:56:22','2014-03-10 17:56:22',NULL,'1',9,1,NULL)
 ,(89,NULL,'2014-03-10 18:00:48','2014-03-10 18:00:48',NULL,'1',27,1,NULL)
 ,(90,NULL,'2014-03-10 18:01:03','2014-03-10 18:01:03',NULL,'1',18,1,NULL)
 ,(91,NULL,'2014-03-10 18:01:14','2014-03-10 18:01:14',NULL,'1',18,1,NULL)
 ,(92,NULL,'2014-03-10 18:01:26','2014-03-10 18:01:26',NULL,'1',18,1,NULL)
 ,(93,NULL,'2014-03-10 18:01:53','2014-03-10 18:01:53',NULL,'1',9,1,NULL)
 ,(94,NULL,'2014-03-10 18:02:05','2014-03-10 18:02:05',NULL,'1',9,1,NULL)
 ,(95,NULL,'2014-03-10 18:02:13','2014-03-10 18:02:13',NULL,'1',9,1,NULL)
 ,(96,NULL,'2014-03-10 18:03:43','2014-03-10 18:03:53',NULL,'1',9,1,NULL);

DROP TABLE IF EXISTS BlockTypePermissionBlockTypeAccessList;

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockTypePermissionBlockTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockTypes;

CREATE TABLE IF NOT EXISTS `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO BlockTypes VALUES(1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for Blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0)
 ,(2,'core_stack_display','Stack Display (Core)','Proxy block for Stacks added through the UI.',1,0,0,1,0,400,400,0)
 ,(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0)
 ,(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0)
 ,(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0)
 ,(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0)
 ,(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,2,600,465,0)
 ,(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,3,500,350,0)
 ,(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,4,370,100,0)
 ,(12,'file','File','Link to Files stored in the asset library.',1,0,0,0,5,300,250,0)
 ,(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,6,380,200,0)
 ,(14,'form','Form','Build simple forms and surveys.',1,0,0,0,7,420,430,0)
 ,(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,8,400,200,0)
 ,(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,9,370,480,0)
 ,(17,'html','HTML','For adding HTML by hand.',1,0,0,0,10,600,465,0)
 ,(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,11,400,550,0)
 ,(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,12,430,400,0)
 ,(20,'page_list','Page List','List Pages based on type, area.',1,0,0,0,13,500,350,0)
 ,(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,14,400,330,0)
 ,(22,'search','Search','Add a search box to your site.',1,0,0,0,15,400,240,0)
 ,(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,16,550,400,0)
 ,(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,17,420,300,0)
 ,(25,'tags','Tags','List Pages based on type, area.',1,0,0,0,18,450,260,0)
 ,(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,19,320,220,0)
 ,(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,20,400,210,0);

DROP TABLE IF EXISTS btContentFile;

CREATE TABLE IF NOT EXISTS `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btContentImage;

CREATE TABLE IF NOT EXISTS `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btContentImage VALUES(57,1,0,0,0,'',0,0,'')
 ,(78,6,0,0,0,'',0,0,'')
 ,(79,6,0,0,0,'',0,0,'')
 ,(80,6,0,0,0,'',0,0,'')
 ,(82,7,0,0,0,'',0,0,'')
 ,(84,7,0,0,0,'',0,0,'')
 ,(85,7,0,0,0,'',0,0,'')
 ,(90,7,0,0,0,'',0,0,'')
 ,(91,7,0,0,0,'',0,0,'')
 ,(92,7,0,0,0,'',0,0,'');

DROP TABLE IF EXISTS btContentLocal;

CREATE TABLE IF NOT EXISTS `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btContentLocal VALUES(1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add Pages using in-context editing.</h2></div>\n						')
 ,(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>')
 ,(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>')
 ,(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>')
 ,(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>')
 ,(13,'<h1><strong>Bienvenue sur mon Blog!</strong></h1>\r\n<p> </p>\r\n<p>ffsdgfd dfhg dfkg kdfg dfbgfdkd fkl fsl</p>')
 ,(14,'            <h2>Menu</h2>\r\n            \r\n            <ul>\r\n                <li><a href=\"index.php\">Accueil</a></li>\r\n                <li><a href=\"article.php\">Rédiger un article</a></li>\r\n            </ul>')
 ,(15,'<h3><strong>Bienvenue sur mon Blog!</strong></h3>\r\n<p> </p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in pulvinar risus, vulputate rutrum tellus. Duis elit nisl, dictum id viverra sit amet, tempor vel mi. Praesent placerat nibh nunc, vel pellentesque mi mattis vel. Vestibulum eu cursus est. Aenean quis elit nec magna tincidunt facilisis interdum a lacus. Quisque adipiscing ante et malesuada dignissim. Donec hendrerit sapien sit amet sem luctus vestibulum. Morbi turpis odio, malesuada vitae odio vitae, vulputate consequat sapien. Morbi porta ultrices dui quis accumsan. Suspendisse euismod vestibulum metus, a egestas massa imperdiet sed.</p>\r\n<p>Nulla felis sem, varius non sagittis et, molestie ac dolor. Praesent quis auctor ante. Nam tristique risus ligula. Aliquam non est sit amet tortor luctus rutrum et non ipsum. Nulla facilisi. Mauris augue mauris, pellentesque sit amet nulla vel, luctus mattis ligula. Sed tincidunt bibendum tortor nec tempor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum blandit ligula ac ligula volutpat, id sagittis nibh blandit. Fusce egestas urna est, vitae porttitor massa placerat condimentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel augue libero. Mauris elementum molestie tortor quis rhoncus.</p>\r\n<p>Etiam iaculis varius nibh ut semper. Mauris lobortis, magna ut ornare posuere, metus felis tempor tellus, id semper lectus velit dapibus felis. Vivamus sed semper massa. Praesent sit amet euismod libero, ut euismod neque. Nulla a consequat nisi. Nullam et libero et ante cursus interdum. Nullam commodo lacinia gravida.</p>\r\n<p>Donec pellentesque turpis id purus congue condimentum. Aenean cursus at libero a blandit. Aenean vulputate dolor at mauris mollis convallis. Praesent nec mi sollicitudin, ultrices ligula elementum, mollis velit. Praesent dapibus vitae dolor quis sagittis. Donec commodo vitae nunc a aliquam. Cras viverra, enim sed adipiscing viverra, velit arcu pulvinar turpis, ac tincidunt turpis neque ut lorem. Integer ullamcorper sapien vel est consectetur imperdiet. Donec lorem ante, scelerisque quis ipsum nec, ultrices facilisis urna. Suspendisse in posuere sem. Pellentesque id ornare dolor, in tincidunt enim. Nam semper nec eros non tempor. Donec sed rutru</p>')
 ,(18,'<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do.</h4>\r\n</div>\r\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\" alt=\"\" /></div>\r\n<div class=\"text-col\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p>\r\n</div>\r\n<p><a class=\"pure-button\" href=\"#\">Learn more →</a></p>')
 ,(19,'<div class=\"titre-col\">\r\n<h3>Complete Solution</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>A tool anything and everything you can think</h4>\r\n</div>')
 ,(20,'<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>')
 ,(21,'				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n				<a class=\"pure-button\" href=\"#\">Learn more →</a>')
 ,(22,'<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n')
 ,(23,'<a class=\"pure-button\" href=\"#\">Learn more →</a>')
 ,(24,'				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div>')
 ,(25,'<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>')
 ,(26,'\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n')
 ,(27,'<a class=\"pure-button\" href=\"#\">Learn more →</a>')
 ,(28,'<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>')
 ,(29,'							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div>')
 ,(30,'<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div>')
 ,(31,'<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n')
 ,(33,'<a class=\"pure-button\" href=\"#\">Learn more →</a>')
 ,(34,'<div class=\"titre-col2\"><h3>Social Connection</h3></div>')
 ,(35,'<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div>')
 ,(36,'<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\">')
 ,(37,'<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div>')
 ,(38,'				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form>')
 ,(39,'<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a>')
 ,(40,'<div class=\"titre-col2\"><h3>Newsletter</h3></div>')
 ,(41,'<div class=\"titre-col2\"><h3>Contact</h3></div>')
 ,(42,'<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form>')
 ,(43,'<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a>')
 ,(44,'<div class=\"titre-col2\"><h3>News Updates</h3></div>')
 ,(45,'				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div>')
 ,(48,'<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a>')
 ,(50,'')
 ,(67,'<p>page1</p>')
 ,(70,'<p style=\"text-align: center;\"><strong>Plan : IUT Calais</strong></p>')
 ,(83,'<p><span>Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet. Proin mattis feugiat sem ac mollis.</span></p>')
 ,(86,'<p><span>Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet. </span></p>')
 ,(87,'<p><span>Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet. Proin mattis feugiat sem ac mollis. Nulla dictum varius dolor, vel commodo orci porta a. </span></p>')
 ,(88,'<p><strong>Concrete5 Tutorial</strong></p>')
 ,(93,'<p><span>Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet. Proin mattis feugiat sem ac mollis. Nulla dictum varius dolor, vel commodo orci porta a. </span></p>')
 ,(94,'<p><span>Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet.</span></p>')
 ,(95,'<p>Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet.</p>')
 ,(96,'<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>');

DROP TABLE IF EXISTS btCoreScrapbookDisplay;

CREATE TABLE IF NOT EXISTS `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btCoreScrapbookDisplay VALUES(17,16)
 ,(72,16)
 ,(73,16)
 ,(46,45)
 ,(47,45)
 ,(58,57)
 ,(59,57);

DROP TABLE IF EXISTS btCoreStackDisplay;

CREATE TABLE IF NOT EXISTS `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btDashboardNewsflowLatest;

CREATE TABLE IF NOT EXISTS `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btDashboardNewsflowLatest VALUES(8,'A')
 ,(9,'B')
 ,(12,'C');

DROP TABLE IF EXISTS btDateNav;

CREATE TABLE IF NOT EXISTS `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btExternalForm;

CREATE TABLE IF NOT EXISTS `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFlashContent;

CREATE TABLE IF NOT EXISTS `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btForm;

CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormAnswers;

CREATE TABLE IF NOT EXISTS `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormAnswerSet;

CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormQuestions;

CREATE TABLE IF NOT EXISTS `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGoogleMap;

CREATE TABLE IF NOT EXISTS `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btGoogleMap VALUES(69,'IUT Calais','Rue Louis David, 62100 Calais',50.9496955,1.8845917,14);

DROP TABLE IF EXISTS btGuestBook;

CREATE TABLE IF NOT EXISTS `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGuestBookEntries;

CREATE TABLE IF NOT EXISTS `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btNavigation;

CREATE TABLE IF NOT EXISTS `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btNavigation VALUES(16,'display_asc','top',0,0,'none','enough',0,0)
 ,(49,'display_asc','top',0,0,'none','enough',0,0)
 ,(68,'display_asc','top',0,0,'none','enough',0,0);

DROP TABLE IF EXISTS btNextPrevious;

CREATE TABLE IF NOT EXISTS `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btPageList;

CREATE TABLE IF NOT EXISTS `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btPageList VALUES(71,0,'display_asc',0,0,0,0,1,0,0,'','',0,0,0);

DROP TABLE IF EXISTS btRssDisplay;

CREATE TABLE IF NOT EXISTS `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSearch;

CREATE TABLE IF NOT EXISTS `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSlideshow;

CREATE TABLE IF NOT EXISTS `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btSlideshow VALUES(60,0,'ORDER',NULL,NULL)
 ,(62,0,'ORDER',NULL,NULL)
 ,(63,0,'ORDER',NULL,NULL)
 ,(64,0,'ORDER',NULL,NULL)
 ,(75,0,'ORDER',NULL,NULL)
 ,(76,0,'ORDER',NULL,NULL)
 ,(77,0,'ORDER',NULL,NULL);

DROP TABLE IF EXISTS btSlideshowImg;

CREATE TABLE IF NOT EXISTS `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO btSlideshowImg VALUES(1,60,2,'',5,2,0,0,341)
 ,(2,60,2,'',5,2,0,1,341)
 ,(7,62,2,'',5,2,0,0,341)
 ,(8,62,3,'',5,2,0,1,341)
 ,(9,63,2,'',5,2,0,0,341)
 ,(10,63,3,'',5,2,0,1,341)
 ,(11,64,2,'',5,2,0,0,341)
 ,(12,64,3,'',5,2,0,1,341)
 ,(15,75,2,'',5,2,0,0,341)
 ,(16,75,3,'',5,2,0,1,341)
 ,(19,76,4,'',5,2,0,0,341)
 ,(20,76,5,'',5,2,0,1,341)
 ,(21,77,4,'',5,2,0,0,341)
 ,(22,77,5,'',5,2,0,1,341);

DROP TABLE IF EXISTS btSurvey;

CREATE TABLE IF NOT EXISTS `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurveyOptions;

CREATE TABLE IF NOT EXISTS `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurveyResults;

CREATE TABLE IF NOT EXISTS `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btTags;

CREATE TABLE IF NOT EXISTS `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btVideo;

CREATE TABLE IF NOT EXISTS `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btYouTube;

CREATE TABLE IF NOT EXISTS `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btYouTube VALUES(74,'Concrete5 Tutorial','https://www.youtube.com/watch?v=heoROstWc04','344','425',0)
 ,(89,'Concrete5 Tutorial','https://www.youtube.com/watch?v=heoROstWc04','344','425',0);

DROP TABLE IF EXISTS CollectionAttributeValues;

CREATE TABLE IF NOT EXISTS `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionAttributeValues VALUES(3,1,3,1)
 ,(3,1,4,2)
 ,(4,1,3,3)
 ,(4,1,4,4)
 ,(5,1,3,5)
 ,(5,1,4,6)
 ,(6,1,3,7)
 ,(7,1,3,8)
 ,(7,1,4,9)
 ,(8,1,3,10)
 ,(8,1,4,11)
 ,(9,1,3,12)
 ,(9,1,4,13)
 ,(11,1,3,14)
 ,(11,1,4,15)
 ,(12,1,3,16)
 ,(12,1,4,17)
 ,(13,1,3,18)
 ,(13,1,4,19)
 ,(14,1,3,21)
 ,(14,1,4,22)
 ,(14,1,5,20)
 ,(15,1,3,23)
 ,(16,1,3,24)
 ,(16,1,4,25)
 ,(17,1,3,26)
 ,(17,1,4,27)
 ,(18,1,3,28)
 ,(18,1,4,29)
 ,(19,1,3,30)
 ,(19,1,4,32)
 ,(19,1,5,31)
 ,(20,1,3,33)
 ,(20,1,4,35)
 ,(20,1,5,34)
 ,(21,1,3,36)
 ,(21,1,4,37)
 ,(22,1,3,38)
 ,(23,1,3,39)
 ,(23,1,4,40)
 ,(24,1,3,41)
 ,(24,1,4,42)
 ,(25,1,3,43)
 ,(25,1,4,44)
 ,(26,1,3,45)
 ,(26,1,4,46)
 ,(28,1,3,47)
 ,(28,1,4,48)
 ,(29,1,3,49)
 ,(30,1,3,50)
 ,(31,1,3,51)
 ,(32,1,3,52)
 ,(32,1,4,53)
 ,(34,1,3,54)
 ,(34,1,4,55)
 ,(35,1,3,56)
 ,(35,1,4,57)
 ,(36,1,3,58)
 ,(37,1,4,59)
 ,(38,1,4,60)
 ,(40,1,3,61)
 ,(40,1,4,62)
 ,(41,1,4,63)
 ,(42,1,5,64)
 ,(42,1,8,65)
 ,(43,1,3,66)
 ,(43,1,4,67)
 ,(44,1,5,68)
 ,(45,1,5,69)
 ,(46,1,3,70)
 ,(47,1,3,71)
 ,(48,1,3,72)
 ,(49,1,3,73)
 ,(50,1,3,74)
 ,(51,1,5,75)
 ,(53,1,3,76)
 ,(54,1,3,77)
 ,(55,1,3,78)
 ,(56,1,3,79)
 ,(57,1,3,80)
 ,(58,1,3,81)
 ,(60,1,3,82)
 ,(61,1,3,83)
 ,(62,1,3,84)
 ,(63,1,3,85)
 ,(64,1,3,86)
 ,(65,1,3,87)
 ,(67,1,3,88)
 ,(68,1,3,89)
 ,(69,1,3,90)
 ,(71,1,3,91)
 ,(72,1,3,92)
 ,(73,1,3,93)
 ,(74,1,3,94)
 ,(77,1,3,95)
 ,(78,1,3,96)
 ,(79,1,3,97)
 ,(80,1,3,98)
 ,(82,1,3,99)
 ,(83,1,3,100)
 ,(84,1,3,101)
 ,(85,1,3,102)
 ,(86,1,3,103)
 ,(87,1,3,104)
 ,(88,1,3,105)
 ,(89,1,3,106)
 ,(90,1,3,107)
 ,(91,1,8,108)
 ,(92,1,3,109)
 ,(93,1,3,110)
 ,(94,1,3,111)
 ,(95,1,3,112)
 ,(96,1,3,113)
 ,(97,1,3,114)
 ,(99,1,3,115)
 ,(100,1,3,116)
 ,(105,1,5,117)
 ,(106,1,5,118)
 ,(106,1,8,119);

DROP TABLE IF EXISTS Collections;

CREATE TABLE IF NOT EXISTS `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

INSERT INTO Collections VALUES(1,'2014-01-21 13:14:03','2014-03-10 18:27:52','home')
 ,(2,'2014-01-21 13:14:32','2014-01-21 13:14:35','dashboard')
 ,(3,'2014-01-21 13:14:35','2014-01-21 13:14:36','composer')
 ,(4,'2014-01-21 13:14:36','2014-01-21 13:14:36','write')
 ,(5,'2014-01-21 13:14:36','2014-01-21 13:14:37','drafts')
 ,(6,'2014-01-21 13:14:37','2014-01-21 13:14:37','sitemap')
 ,(7,'2014-01-21 13:14:37','2014-01-21 13:14:38','full')
 ,(8,'2014-01-21 13:14:38','2014-01-21 13:14:38','explore')
 ,(9,'2014-01-21 13:14:38','2014-01-21 13:14:38','search')
 ,(10,'2014-01-21 13:14:38','2014-01-21 13:14:39','files')
 ,(11,'2014-01-21 13:14:39','2014-01-21 13:14:39','search')
 ,(12,'2014-01-21 13:14:39','2014-01-21 13:14:40','attributes')
 ,(13,'2014-01-21 13:14:40','2014-01-21 13:14:40','sets')
 ,(14,'2014-01-21 13:14:40','2014-01-21 13:14:41','add_set')
 ,(15,'2014-01-21 13:14:41','2014-01-21 13:14:42','users')
 ,(16,'2014-01-21 13:14:42','2014-01-21 13:14:42','search')
 ,(17,'2014-01-21 13:14:42','2014-01-21 13:14:42','groups')
 ,(18,'2014-01-21 13:14:43','2014-01-21 13:14:43','attributes')
 ,(19,'2014-01-21 13:14:43','2014-01-21 13:14:43','add')
 ,(20,'2014-01-21 13:14:43','2014-01-21 13:14:44','add_group')
 ,(21,'2014-01-21 13:14:44','2014-01-21 13:14:44','group_sets')
 ,(22,'2014-01-21 13:14:44','2014-01-21 13:14:45','reports')
 ,(23,'2014-01-21 13:14:45','2014-01-21 13:14:45','statistics')
 ,(24,'2014-01-21 13:14:45','2014-01-21 13:14:45','forms')
 ,(25,'2014-01-21 13:14:46','2014-01-21 13:14:46','surveys')
 ,(26,'2014-01-21 13:14:46','2014-01-21 13:14:46','logs')
 ,(27,'2014-01-21 13:14:46','2014-01-21 13:14:47','pages')
 ,(28,'2014-01-21 13:14:47','2014-01-21 13:14:47','themes')
 ,(29,'2014-01-21 13:14:47','2014-01-21 13:14:47','add')
 ,(30,'2014-01-21 13:14:47','2014-01-21 13:14:48','inspect')
 ,(31,'2014-01-21 13:14:48','2014-01-21 13:14:48','customize')
 ,(32,'2014-01-21 13:14:48','2014-01-21 13:14:48','types')
 ,(33,'2014-01-21 13:14:49','2014-01-21 13:14:49','add')
 ,(34,'2014-01-21 13:14:49','2014-01-21 13:14:49','attributes')
 ,(35,'2014-01-21 13:14:49','2014-01-21 13:14:50','single')
 ,(36,'2014-01-21 13:14:50','2014-01-21 13:14:50','workflow')
 ,(37,'2014-01-21 13:14:50','2014-01-21 13:14:50','list')
 ,(38,'2014-01-21 13:14:50','2014-01-21 13:14:51','me')
 ,(39,'2014-01-21 13:14:51','2014-01-21 13:14:52','blocks')
 ,(40,'2014-01-21 13:14:52','2014-01-21 13:14:52','stacks')
 ,(41,'2014-01-21 13:14:52','2014-01-21 13:14:52','permissions')
 ,(42,'2014-01-21 13:14:52','2014-01-21 13:14:53','list')
 ,(43,'2014-01-21 13:14:53','2014-01-21 13:14:54','types')
 ,(44,'2014-01-21 13:14:54','2014-01-21 13:14:54','extend')
 ,(45,'2014-01-21 13:14:54','2014-01-21 13:14:55','news')
 ,(46,'2014-01-21 13:14:55','2014-01-21 13:14:55','install')
 ,(47,'2014-01-21 13:14:55','2014-01-21 13:14:55','update')
 ,(48,'2014-01-21 13:14:55','2014-01-21 13:14:56','connect')
 ,(49,'2014-01-21 13:14:56','2014-01-21 13:14:56','themes')
 ,(50,'2014-01-21 13:14:56','2014-01-21 13:14:57','add-ons')
 ,(51,'2014-01-21 13:14:57','2014-01-21 13:14:57','system')
 ,(52,'2014-01-21 13:14:57','2014-01-21 13:14:57','basics')
 ,(53,'2014-01-21 13:14:57','2014-01-21 13:14:58','site_name')
 ,(54,'2014-01-21 13:14:58','2014-01-21 13:14:58','icons')
 ,(55,'2014-01-21 13:14:58','2014-01-21 13:14:58','editor')
 ,(56,'2014-01-21 13:14:58','2014-01-21 13:14:59','multilingual')
 ,(57,'2014-01-21 13:14:59','2014-01-21 13:14:59','timezone')
 ,(58,'2014-01-21 13:14:59','2014-01-21 13:15:00','interface')
 ,(59,'2014-01-21 13:15:00','2014-01-21 13:15:00','seo')
 ,(60,'2014-01-21 13:15:00','2014-01-21 13:15:00','urls')
 ,(61,'2014-01-21 13:15:00','2014-01-21 13:15:00','bulk_seo_tool')
 ,(62,'2014-01-21 13:15:01','2014-01-21 13:15:01','tracking_codes')
 ,(63,'2014-01-21 13:15:01','2014-01-21 13:15:01','excluded')
 ,(64,'2014-01-21 13:15:01','2014-01-21 13:15:02','statistics')
 ,(65,'2014-01-21 13:15:02','2014-01-21 13:15:02','search_index')
 ,(66,'2014-01-21 13:15:02','2014-01-21 13:15:03','optimization')
 ,(67,'2014-01-21 13:15:03','2014-01-21 13:15:03','cache')
 ,(68,'2014-01-21 13:15:03','2014-01-21 13:15:03','clear_cache')
 ,(69,'2014-01-21 13:15:04','2014-01-21 13:15:04','jobs')
 ,(70,'2014-01-21 13:15:04','2014-01-21 13:15:04','permissions')
 ,(71,'2014-01-21 13:15:04','2014-01-21 13:15:04','site')
 ,(72,'2014-01-21 13:15:04','2014-01-21 13:15:05','files')
 ,(73,'2014-01-21 13:15:05','2014-01-21 13:15:05','file_types')
 ,(74,'2014-01-21 13:15:05','2014-01-21 13:15:06','tasks')
 ,(75,'2014-01-21 13:15:06','2014-01-21 13:15:06','users')
 ,(76,'2014-01-21 13:15:06','2014-01-21 13:15:07','advanced')
 ,(77,'2014-01-21 13:15:07','2014-01-21 13:15:07','ip_blacklist')
 ,(78,'2014-01-21 13:15:08','2014-01-21 13:15:08','captcha')
 ,(79,'2014-01-21 13:15:08','2014-01-21 13:15:08','antispam')
 ,(80,'2014-01-21 13:15:09','2014-01-21 13:15:09','maintenance_mode')
 ,(81,'2014-01-21 13:15:09','2014-01-21 13:15:09','registration')
 ,(82,'2014-01-21 13:15:09','2014-01-21 13:15:10','postlogin')
 ,(83,'2014-01-21 13:15:10','2014-01-21 13:15:10','profiles')
 ,(84,'2014-01-21 13:15:10','2014-01-21 13:15:11','public_registration')
 ,(85,'2014-01-21 13:15:11','2014-01-21 13:15:11','mail')
 ,(86,'2014-01-21 13:15:11','2014-01-21 13:15:12','method')
 ,(87,'2014-01-21 13:15:12','2014-01-21 13:15:12','importers')
 ,(88,'2014-01-21 13:15:12','2014-01-21 13:15:13','attributes')
 ,(89,'2014-01-21 13:15:13','2014-01-21 13:15:13','sets')
 ,(90,'2014-01-21 13:15:13','2014-01-21 13:15:13','types')
 ,(91,'2014-01-21 13:15:13','2014-01-21 13:15:14','environment')
 ,(92,'2014-01-21 13:15:14','2014-01-21 13:15:14','info')
 ,(93,'2014-01-21 13:15:14','2014-01-21 13:15:14','debug')
 ,(94,'2014-01-21 13:15:15','2014-01-21 13:15:15','logging')
 ,(95,'2014-01-21 13:15:15','2014-01-21 13:15:16','file_storage_locations')
 ,(96,'2014-01-21 13:15:16','2014-01-21 13:15:17','proxy')
 ,(97,'2014-01-21 13:15:17','2014-01-21 13:15:17','backup_restore')
 ,(98,'2014-01-21 13:15:17','2014-01-21 13:15:17','backup')
 ,(99,'2014-01-21 13:15:17','2014-01-21 13:15:18','update')
 ,(100,'2014-01-21 13:15:18','2014-01-21 13:15:18','database')
 ,(101,'2014-01-21 13:15:18','2014-01-21 13:15:18','composer')
 ,(102,'2014-01-21 13:15:18','2014-01-21 13:15:18',NULL)
 ,(103,'2014-01-21 13:15:18','2014-01-21 13:15:18',NULL)
 ,(104,'2014-01-21 13:15:19','2014-01-21 13:15:19',NULL)
 ,(105,'2014-01-21 13:15:19','2014-01-21 13:15:19','welcome')
 ,(106,'2014-01-21 13:15:19','2014-01-21 13:15:19','home')
 ,(107,'2014-01-21 13:15:38','2014-01-21 13:15:39','!drafts')
 ,(108,'2014-01-21 13:15:39','2014-01-21 13:15:39','!trash')
 ,(109,'2014-01-21 13:15:39','2014-01-21 13:15:39','!stacks')
 ,(110,'2014-01-21 13:15:39','2014-01-21 13:15:40','login')
 ,(111,'2014-01-21 13:15:40','2014-01-21 13:15:41','register')
 ,(112,'2014-01-21 13:15:41','2014-01-21 13:15:41','profile')
 ,(113,'2014-01-21 13:15:42','2014-01-21 13:15:42','edit')
 ,(114,'2014-01-21 13:15:42','2014-01-21 13:15:43','avatar')
 ,(115,'2014-01-21 13:15:43','2014-01-21 13:15:43','messages')
 ,(116,'2014-01-21 13:15:43','2014-01-21 13:15:44','friends')
 ,(117,'2014-01-21 13:15:44','2014-01-21 13:15:44','page_not_found')
 ,(118,'2014-01-21 13:15:44','2014-01-21 13:15:45','page_forbidden')
 ,(119,'2014-01-21 13:15:45','2014-01-21 13:15:45','download_file')
 ,(120,'2014-01-21 13:15:45','2014-01-21 13:15:46','members')
 ,(121,'2014-01-21 13:15:47','2014-01-21 13:15:47',NULL)
 ,(122,'2014-01-21 15:12:06','2014-03-10 18:02:46','presentation')
 ,(123,'2014-01-21 15:12:23','2014-03-10 14:44:41','plan')
 ,(124,'2014-01-21 15:13:10','2014-03-10 17:24:34','contact')
 ,(125,'2014-01-27 12:36:45','2014-03-10 13:10:50',NULL)
 ,(126,'2014-02-18 14:09:42','2014-02-18 14:09:42',NULL)
 ,(127,'2014-02-18 14:09:45','2014-02-18 14:09:45',NULL)
 ,(128,'2014-03-10 12:17:44','2014-03-10 12:17:44',NULL)
 ,(129,'2014-03-10 12:18:01','2014-03-10 12:18:01',NULL)
 ,(130,'2014-03-10 12:48:15','2014-03-10 12:48:15',NULL)
 ,(131,'2014-03-10 12:48:15','2014-03-10 12:48:15',NULL)
 ,(132,'2014-03-10 14:46:17','2014-03-10 18:04:27','blog')
 ,(133,'2014-03-10 19:30:17','2014-03-10 19:30:18','db_migration');

DROP TABLE IF EXISTS CollectionSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionSearchIndexAttributes VALUES(1,NULL,NULL,NULL,NULL,0,0,NULL,0,0)
 ,(3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0)
 ,(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0)
 ,(5,NULL,NULL,'blog drafts, composer','icon-book',0,0,NULL,0,0)
 ,(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0)
 ,(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0)
 ,(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0)
 ,(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0)
 ,(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0)
 ,(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0)
 ,(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0)
 ,(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0)
 ,(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0)
 ,(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0)
 ,(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0)
 ,(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0)
 ,(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0)
 ,(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0)
 ,(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0)
 ,(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0)
 ,(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0)
 ,(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0)
 ,(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0)
 ,(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0)
 ,(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0)
 ,(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0)
 ,(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0)
 ,(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0)
 ,(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0)
 ,(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0)
 ,(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0)
 ,(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0)
 ,(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0)
 ,(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0)
 ,(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0)
 ,(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0)
 ,(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0)
 ,(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0)
 ,(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0)
 ,(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0)
 ,(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0)
 ,(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0)
 ,(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0)
 ,(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0)
 ,(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0)
 ,(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0)
 ,(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0)
 ,(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0)
 ,(55,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,0,0)
 ,(56,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,0,0)
 ,(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0)
 ,(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0)
 ,(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0)
 ,(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0)
 ,(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0)
 ,(63,NULL,NULL,'pretty, slug',NULL,0,0,NULL,0,0)
 ,(64,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0)
 ,(65,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0)
 ,(67,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0)
 ,(68,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0)
 ,(69,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0)
 ,(71,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0)
 ,(72,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0)
 ,(73,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0)
 ,(74,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0)
 ,(77,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0)
 ,(78,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0)
 ,(79,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0)
 ,(80,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0)
 ,(82,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0)
 ,(83,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,0,0)
 ,(84,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0)
 ,(85,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0)
 ,(86,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0)
 ,(87,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0)
 ,(88,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0)
 ,(89,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0)
 ,(90,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0)
 ,(91,NULL,NULL,NULL,NULL,0,0,NULL,1,0)
 ,(92,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,0,0)
 ,(93,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,0,0)
 ,(94,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,0,0)
 ,(95,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0)
 ,(96,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0)
 ,(97,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0)
 ,(99,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0)
 ,(100,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0)
 ,(105,NULL,NULL,NULL,NULL,1,0,NULL,0,0)
 ,(106,NULL,NULL,NULL,NULL,1,0,NULL,1,0)
 ,(122,NULL,NULL,NULL,NULL,0,0,NULL,0,0)
 ,(123,NULL,NULL,NULL,NULL,0,0,NULL,0,0)
 ,(124,NULL,NULL,NULL,NULL,0,0,NULL,0,0)
 ,(132,NULL,NULL,NULL,NULL,0,0,NULL,0,0);

DROP TABLE IF EXISTS CollectionVersionAreaLayouts;

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionAreaLayouts VALUES(1,122,13,'Produits',1,1,1)
 ,(2,122,13,'Produits : Layout 1 : Cell 2',2,1,1)
 ,(3,122,14,'Produits',1,1,1)
 ,(4,122,14,'Produits : Layout 1 : Cell 2',2,1,1)
 ,(5,122,15,'Produits',1,1,1)
 ,(6,122,15,'Produits : Layout 1 : Cell 2',2,1,1)
 ,(7,122,16,'Produits',1,1,1)
 ,(8,122,16,'Produits : Layout 1 : Cell 2',2,1,1)
 ,(9,122,17,'Produits',1,1,1)
 ,(10,122,17,'Produits : Layout 1 : Cell 2',2,1,1)
 ,(11,122,18,'Produits',1,1,1)
 ,(12,122,18,'Produits : Layout 1 : Cell 2',2,1,1);

DROP TABLE IF EXISTS CollectionVersionAreaStyles;

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersionBlocks;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionBlocks VALUES(1,2,13,'Contenu',0,1,0,0)
 ,(1,3,13,'Contenu',0,0,0,0)
 ,(1,3,14,'Menu',0,1,0,0)
 ,(1,4,15,'Contenu',0,1,0,0)
 ,(1,4,16,'Menu',0,1,0,0)
 ,(1,5,16,'Menu',0,0,0,0)
 ,(1,5,18,'Contenu',0,1,0,0)
 ,(1,6,16,'Menu',0,0,0,0)
 ,(1,6,18,'Contenu',0,0,0,0)
 ,(1,6,19,'col1',0,1,0,0)
 ,(1,6,20,'col1',1,1,0,0)
 ,(1,6,21,'col1',2,1,0,0)
 ,(1,7,16,'Menu',0,0,0,0)
 ,(1,7,18,'Contenu',0,0,0,0)
 ,(1,7,20,'col1',1,0,0,0)
 ,(1,7,22,'col1',2,1,0,0)
 ,(1,7,23,'col1',3,1,0,0)
 ,(1,7,24,'col2',0,1,0,0)
 ,(1,7,25,'col2',1,1,0,0)
 ,(1,7,26,'col2',2,1,0,0)
 ,(1,7,27,'col2',3,1,0,0)
 ,(1,7,28,'col1',0,1,0,0)
 ,(1,7,29,'col3',0,1,0,0)
 ,(1,7,30,'col3',1,1,0,0)
 ,(1,7,31,'col3',2,1,0,0)
 ,(1,7,33,'col3',3,1,0,0)
 ,(1,7,34,'social',0,1,0,0)
 ,(1,7,35,'social',1,1,0,0)
 ,(1,7,36,'social',2,1,0,0)
 ,(1,7,37,'social',3,1,0,0)
 ,(1,7,38,'social',4,1,0,0)
 ,(1,7,39,'social',5,1,0,0)
 ,(1,8,16,'Menu',0,0,0,0)
 ,(1,8,18,'Contenu',0,0,0,0)
 ,(1,8,20,'col1',1,0,0,0)
 ,(1,8,22,'col1',2,0,0,0)
 ,(1,8,23,'col1',3,0,0,0)
 ,(1,8,24,'col2',0,0,0,0)
 ,(1,8,25,'col2',1,0,0,0)
 ,(1,8,26,'col2',2,0,0,0)
 ,(1,8,27,'col2',3,0,0,0)
 ,(1,8,28,'col1',0,0,0,0)
 ,(1,8,29,'col3',0,0,0,0)
 ,(1,8,30,'col3',1,0,0,0)
 ,(1,8,31,'col3',2,0,0,0)
 ,(1,8,33,'col3',3,0,0,0)
 ,(1,8,34,'social',0,0,0,0)
 ,(1,8,35,'social',1,0,0,0)
 ,(1,8,36,'social',2,0,0,0)
 ,(1,8,37,'social',4,0,0,0)
 ,(1,8,38,'social',5,0,0,0)
 ,(1,8,39,'social',6,0,0,0)
 ,(1,8,40,'social',3,1,0,0)
 ,(1,9,16,'Menu',0,0,0,0)
 ,(1,9,18,'Contenu',0,0,0,0)
 ,(1,9,20,'col1',1,0,0,0)
 ,(1,9,22,'col1',2,0,0,0)
 ,(1,9,23,'col1',3,0,0,0)
 ,(1,9,24,'col2',0,0,0,0)
 ,(1,9,25,'col2',1,0,0,0)
 ,(1,9,26,'col2',2,0,0,0)
 ,(1,9,27,'col2',3,0,0,0)
 ,(1,9,28,'col1',0,0,0,0)
 ,(1,9,29,'col3',0,0,0,0)
 ,(1,9,30,'col3',1,0,0,0)
 ,(1,9,31,'col3',2,0,0,0)
 ,(1,9,33,'col3',3,0,0,0)
 ,(1,9,34,'social',0,0,0,0)
 ,(1,9,35,'social',1,0,0,0)
 ,(1,9,36,'social',2,0,0,0)
 ,(1,9,37,'social',4,0,0,0)
 ,(1,9,38,'social',5,0,0,0)
 ,(1,9,39,'social',6,0,0,0)
 ,(1,9,40,'social',3,0,0,0)
 ,(1,9,41,'contact',0,1,0,0)
 ,(1,9,42,'contact',1,1,0,0)
 ,(1,9,43,'contact',2,1,0,0)
 ,(1,10,16,'Menu',0,0,0,0)
 ,(1,10,18,'Contenu',0,0,0,0)
 ,(1,10,20,'col1',1,0,0,0)
 ,(1,10,22,'col1',2,0,0,0)
 ,(1,10,23,'col1',3,0,0,0)
 ,(1,10,24,'col2',0,0,0,0)
 ,(1,10,25,'col2',1,0,0,0)
 ,(1,10,26,'col2',2,0,0,0)
 ,(1,10,27,'col2',3,0,0,0)
 ,(1,10,28,'col1',0,0,0,0)
 ,(1,10,29,'col3',0,0,0,0)
 ,(1,10,30,'col3',1,0,0,0)
 ,(1,10,31,'col3',2,0,0,0)
 ,(1,10,33,'col3',3,0,0,0)
 ,(1,10,34,'social',0,0,0,0)
 ,(1,10,35,'social',1,0,0,0)
 ,(1,10,36,'social',2,0,0,0)
 ,(1,10,37,'social',4,0,0,0)
 ,(1,10,38,'social',5,0,0,0)
 ,(1,10,39,'social',6,0,0,0)
 ,(1,10,40,'social',3,0,0,0)
 ,(1,10,41,'contact',0,0,0,0)
 ,(1,10,42,'contact',1,0,0,0)
 ,(1,10,43,'contact',2,0,0,0)
 ,(1,10,44,'actualité',0,1,0,0)
 ,(1,10,45,'actualité',1,1,0,0)
 ,(1,10,46,'actualité',2,1,0,0)
 ,(1,10,47,'actualité',3,1,0,0)
 ,(1,10,48,'actualité',4,1,0,0)
 ,(1,11,16,'Menu',0,0,0,0)
 ,(1,11,18,'Contenu',0,0,0,0)
 ,(1,11,20,'col1',1,0,0,0)
 ,(1,11,22,'col1',2,0,0,0)
 ,(1,11,23,'col1',3,0,0,0)
 ,(1,11,24,'col2',0,0,0,0)
 ,(1,11,25,'col2',1,0,0,0)
 ,(1,11,26,'col2',2,0,0,0)
 ,(1,11,27,'col2',3,0,0,0)
 ,(1,11,28,'col1',0,0,0,0)
 ,(1,11,29,'col3',0,0,0,0)
 ,(1,11,30,'col3',1,0,0,0)
 ,(1,11,31,'col3',2,0,0,0)
 ,(1,11,33,'col3',3,0,0,0)
 ,(1,11,34,'social',0,0,0,0)
 ,(1,11,35,'social',1,0,0,0)
 ,(1,11,36,'social',2,0,0,0)
 ,(1,11,37,'social',4,0,0,0)
 ,(1,11,38,'social',5,0,0,0)
 ,(1,11,39,'social',6,0,0,0)
 ,(1,11,40,'social',3,0,0,0)
 ,(1,11,41,'contact',0,0,0,0)
 ,(1,11,42,'contact',1,0,0,0)
 ,(1,11,43,'contact',2,0,0,0)
 ,(1,11,44,'actualité',0,0,0,0)
 ,(1,11,45,'actualité',1,0,0,0)
 ,(1,11,46,'actualité',2,0,0,0)
 ,(1,11,47,'actualité',3,0,0,0)
 ,(1,11,48,'actualité',4,0,0,0)
 ,(1,11,49,'Menu1',0,1,0,0)
 ,(1,12,16,'Menu',0,0,0,0)
 ,(1,12,20,'col1',1,0,0,0)
 ,(1,12,22,'col1',2,0,0,0)
 ,(1,12,23,'col1',3,0,0,0)
 ,(1,12,24,'col2',0,0,0,0)
 ,(1,12,25,'col2',1,0,0,0)
 ,(1,12,26,'col2',2,0,0,0)
 ,(1,12,27,'col2',3,0,0,0)
 ,(1,12,28,'col1',0,0,0,0)
 ,(1,12,29,'col3',0,0,0,0)
 ,(1,12,30,'col3',1,0,0,0)
 ,(1,12,31,'col3',2,0,0,0)
 ,(1,12,33,'col3',3,0,0,0)
 ,(1,12,34,'social',0,0,0,0)
 ,(1,12,35,'social',1,0,0,0)
 ,(1,12,36,'social',2,0,0,0)
 ,(1,12,37,'social',4,0,0,0)
 ,(1,12,38,'social',5,0,0,0)
 ,(1,12,39,'social',6,0,0,0)
 ,(1,12,40,'social',3,0,0,0)
 ,(1,12,41,'contact',0,0,0,0)
 ,(1,12,42,'contact',1,0,0,0)
 ,(1,12,43,'contact',2,0,0,0)
 ,(1,12,44,'actualité',0,0,0,0)
 ,(1,12,45,'actualité',1,0,0,0)
 ,(1,12,46,'actualité',2,0,0,0)
 ,(1,12,47,'actualité',3,0,0,0)
 ,(1,12,48,'actualité',4,0,0,0)
 ,(1,12,49,'Menu1',0,0,0,0)
 ,(1,12,50,'contenu',0,1,0,0)
 ,(1,13,16,'Menu',0,0,0,0)
 ,(1,13,20,'col1',1,0,0,0)
 ,(1,13,22,'col1',2,0,0,0)
 ,(1,13,23,'col1',3,0,0,0)
 ,(1,13,24,'col2',0,0,0,0)
 ,(1,13,25,'col2',1,0,0,0)
 ,(1,13,26,'col2',2,0,0,0)
 ,(1,13,27,'col2',3,0,0,0)
 ,(1,13,28,'col1',0,0,0,0)
 ,(1,13,29,'col3',0,0,0,0)
 ,(1,13,30,'col3',1,0,0,0)
 ,(1,13,31,'col3',2,0,0,0)
 ,(1,13,33,'col3',3,0,0,0)
 ,(1,13,34,'social',0,0,0,0)
 ,(1,13,35,'social',1,0,0,0)
 ,(1,13,36,'social',2,0,0,0)
 ,(1,13,37,'social',4,0,0,0)
 ,(1,13,38,'social',5,0,0,0)
 ,(1,13,39,'social',6,0,0,0)
 ,(1,13,40,'social',3,0,0,0)
 ,(1,13,41,'contact',0,0,0,0)
 ,(1,13,42,'contact',1,0,0,0)
 ,(1,13,43,'contact',2,0,0,0)
 ,(1,13,44,'actualité',0,0,0,0)
 ,(1,13,45,'actualité',1,0,0,0)
 ,(1,13,46,'actualité',2,0,0,0)
 ,(1,13,47,'actualité',3,0,0,0)
 ,(1,13,48,'actualité',4,0,0,0)
 ,(1,13,49,'Menu1',0,0,0,0)
 ,(1,13,50,'contenu',0,0,0,0)
 ,(1,14,16,'Menu',0,0,0,0)
 ,(1,14,20,'col1',1,0,0,0)
 ,(1,14,22,'col1',2,0,0,0)
 ,(1,14,23,'col1',3,0,0,0)
 ,(1,14,24,'col2',0,0,0,0)
 ,(1,14,25,'col2',1,0,0,0)
 ,(1,14,26,'col2',2,0,0,0)
 ,(1,14,27,'col2',3,0,0,0)
 ,(1,14,28,'col1',0,0,0,0)
 ,(1,14,29,'col3',0,0,0,0)
 ,(1,14,30,'col3',1,0,0,0)
 ,(1,14,31,'col3',2,0,0,0)
 ,(1,14,33,'col3',3,0,0,0)
 ,(1,14,34,'social',0,0,0,0)
 ,(1,14,35,'social',1,0,0,0)
 ,(1,14,36,'social',2,0,0,0)
 ,(1,14,37,'social',4,0,0,0)
 ,(1,14,38,'social',5,0,0,0)
 ,(1,14,39,'social',6,0,0,0)
 ,(1,14,40,'social',3,0,0,0)
 ,(1,14,41,'contact',0,0,0,0)
 ,(1,14,42,'contact',1,0,0,0)
 ,(1,14,43,'contact',2,0,0,0)
 ,(1,14,44,'actualité',0,0,0,0)
 ,(1,14,45,'actualité',1,0,0,0)
 ,(1,14,46,'actualité',2,0,0,0)
 ,(1,14,47,'actualité',3,0,0,0)
 ,(1,14,48,'actualité',4,0,0,0)
 ,(1,14,49,'Menu1',0,0,0,0)
 ,(1,14,50,'contenu',0,0,0,0)
 ,(1,15,16,'Menu',0,0,0,0)
 ,(1,15,20,'col1',1,0,0,0)
 ,(1,15,22,'col1',2,0,0,0)
 ,(1,15,23,'col1',3,0,0,0)
 ,(1,15,24,'col2',0,0,0,0)
 ,(1,15,25,'col2',1,0,0,0)
 ,(1,15,26,'col2',2,0,0,0)
 ,(1,15,27,'col2',3,0,0,0)
 ,(1,15,28,'col1',0,0,0,0)
 ,(1,15,29,'col3',0,0,0,0)
 ,(1,15,30,'col3',1,0,0,0)
 ,(1,15,31,'col3',2,0,0,0)
 ,(1,15,33,'col3',3,0,0,0)
 ,(1,15,34,'social',0,0,0,0)
 ,(1,15,35,'social',1,0,0,0)
 ,(1,15,36,'social',2,0,0,0)
 ,(1,15,37,'social',4,0,0,0)
 ,(1,15,38,'social',5,0,0,0)
 ,(1,15,39,'social',6,0,0,0)
 ,(1,15,40,'social',3,0,0,0)
 ,(1,15,41,'contact',0,0,0,0)
 ,(1,15,42,'contact',1,0,0,0)
 ,(1,15,43,'contact',2,0,0,0)
 ,(1,15,44,'actualité',0,0,0,0)
 ,(1,15,45,'actualité',1,0,0,0)
 ,(1,15,46,'actualité',2,0,0,0)
 ,(1,15,47,'actualité',3,0,0,0)
 ,(1,15,48,'actualité',4,0,0,0)
 ,(1,15,49,'Menu1',0,0,0,0)
 ,(1,15,50,'contenu',0,0,0,0)
 ,(1,16,16,'Menu',0,0,0,0)
 ,(1,16,20,'col1',1,0,0,0)
 ,(1,16,22,'col1',2,0,0,0)
 ,(1,16,23,'col1',3,0,0,0)
 ,(1,16,24,'col2',0,0,0,0)
 ,(1,16,25,'col2',1,0,0,0)
 ,(1,16,26,'col2',2,0,0,0)
 ,(1,16,27,'col2',3,0,0,0)
 ,(1,16,28,'col1',0,0,0,0)
 ,(1,16,29,'col3',0,0,0,0)
 ,(1,16,30,'col3',1,0,0,0)
 ,(1,16,31,'col3',2,0,0,0)
 ,(1,16,33,'col3',3,0,0,0)
 ,(1,16,34,'social',0,0,0,0)
 ,(1,16,35,'social',1,0,0,0)
 ,(1,16,36,'social',2,0,0,0)
 ,(1,16,37,'social',4,0,0,0)
 ,(1,16,38,'social',5,0,0,0)
 ,(1,16,39,'social',6,0,0,0)
 ,(1,16,40,'social',3,0,0,0)
 ,(1,16,41,'contact',0,0,0,0)
 ,(1,16,42,'contact',1,0,0,0)
 ,(1,16,43,'contact',2,0,0,0)
 ,(1,16,44,'actualité',0,0,0,0)
 ,(1,16,45,'actualité',1,0,0,0)
 ,(1,16,46,'actualité',2,0,0,0)
 ,(1,16,47,'actualité',3,0,0,0)
 ,(1,16,48,'actualité',4,0,0,0)
 ,(1,16,49,'Menu1',0,0,0,0)
 ,(1,16,50,'contenu',0,0,0,0)
 ,(1,17,16,'Menu',0,0,0,0)
 ,(1,17,20,'col1',1,0,0,0)
 ,(1,17,22,'col1',2,0,0,0)
 ,(1,17,23,'col1',3,0,0,0)
 ,(1,17,24,'col2',0,0,0,0)
 ,(1,17,25,'col2',1,0,0,0)
 ,(1,17,26,'col2',2,0,0,0)
 ,(1,17,27,'col2',3,0,0,0)
 ,(1,17,28,'col1',0,0,0,0)
 ,(1,17,29,'col3',0,0,0,0)
 ,(1,17,30,'col3',1,0,0,0)
 ,(1,17,31,'col3',2,0,0,0)
 ,(1,17,33,'col3',3,0,0,0)
 ,(1,17,34,'social',0,0,0,0)
 ,(1,17,35,'social',1,0,0,0)
 ,(1,17,36,'social',2,0,0,0)
 ,(1,17,37,'social',4,0,0,0)
 ,(1,17,38,'social',5,0,0,0)
 ,(1,17,39,'social',6,0,0,0)
 ,(1,17,40,'social',3,0,0,0)
 ,(1,17,41,'contact',0,0,0,0)
 ,(1,17,42,'contact',1,0,0,0)
 ,(1,17,43,'contact',2,0,0,0)
 ,(1,17,44,'actualité',0,0,0,0)
 ,(1,17,45,'actualité',1,0,0,0)
 ,(1,17,46,'actualité',2,0,0,0)
 ,(1,17,47,'actualité',3,0,0,0)
 ,(1,17,48,'actualité',4,0,0,0)
 ,(1,17,49,'Menu1',0,0,0,0)
 ,(1,17,50,'contenu',0,0,0,0)
 ,(1,18,16,'Menu',0,0,0,0)
 ,(1,18,20,'col1',1,0,0,0)
 ,(1,18,22,'col1',2,0,0,0)
 ,(1,18,23,'col1',3,0,0,0)
 ,(1,18,24,'col2',0,0,0,0)
 ,(1,18,25,'col2',1,0,0,0)
 ,(1,18,26,'col2',2,0,0,0)
 ,(1,18,27,'col2',3,0,0,0)
 ,(1,18,28,'col1',0,0,0,0)
 ,(1,18,29,'col3',0,0,0,0)
 ,(1,18,30,'col3',1,0,0,0)
 ,(1,18,31,'col3',2,0,0,0)
 ,(1,18,33,'col3',3,0,0,0)
 ,(1,18,34,'social',0,0,0,0)
 ,(1,18,35,'social',1,0,0,0)
 ,(1,18,36,'social',2,0,0,0)
 ,(1,18,37,'social',4,0,0,0)
 ,(1,18,38,'social',5,0,0,0)
 ,(1,18,39,'social',6,0,0,0)
 ,(1,18,40,'social',3,0,0,0)
 ,(1,18,41,'contact',0,0,0,0)
 ,(1,18,42,'contact',1,0,0,0)
 ,(1,18,43,'contact',2,0,0,0)
 ,(1,18,44,'actualité',0,0,0,0)
 ,(1,18,45,'actualité',1,0,0,0)
 ,(1,18,46,'actualité',2,0,0,0)
 ,(1,18,47,'actualité',3,0,0,0)
 ,(1,18,48,'actualité',4,0,0,0)
 ,(1,18,49,'Menu1',0,0,0,0)
 ,(1,18,50,'contenu',0,0,0,0)
 ,(1,19,16,'Menu',0,0,0,0)
 ,(1,19,20,'col1',1,0,0,0)
 ,(1,19,22,'col1',2,0,0,0)
 ,(1,19,23,'col1',3,0,0,0)
 ,(1,19,24,'col2',0,0,0,0)
 ,(1,19,25,'col2',1,0,0,0)
 ,(1,19,26,'col2',2,0,0,0)
 ,(1,19,27,'col2',3,0,0,0)
 ,(1,19,28,'col1',0,0,0,0)
 ,(1,19,29,'col3',0,0,0,0)
 ,(1,19,30,'col3',1,0,0,0)
 ,(1,19,31,'col3',2,0,0,0)
 ,(1,19,33,'col3',3,0,0,0)
 ,(1,19,34,'social',0,0,0,0)
 ,(1,19,35,'social',1,0,0,0)
 ,(1,19,36,'social',2,0,0,0)
 ,(1,19,37,'social',4,0,0,0)
 ,(1,19,38,'social',5,0,0,0)
 ,(1,19,39,'social',6,0,0,0)
 ,(1,19,40,'social',3,0,0,0)
 ,(1,19,41,'contact',0,0,0,0)
 ,(1,19,42,'contact',1,0,0,0)
 ,(1,19,43,'contact',2,0,0,0)
 ,(1,19,44,'actualité',0,0,0,0)
 ,(1,19,45,'actualité',1,0,0,0)
 ,(1,19,46,'actualité',2,0,0,0)
 ,(1,19,47,'actualité',3,0,0,0)
 ,(1,19,48,'actualité',4,0,0,0)
 ,(1,19,49,'Menu1',0,0,0,0)
 ,(1,19,50,'contenu',0,0,0,0)
 ,(1,20,16,'Menu',0,0,0,0)
 ,(1,20,22,'col1',3,0,0,0)
 ,(1,20,23,'col1',4,0,0,0)
 ,(1,20,24,'col2',0,0,0,0)
 ,(1,20,26,'col2',3,0,0,0)
 ,(1,20,27,'col2',4,0,0,0)
 ,(1,20,28,'col1',0,0,0,0)
 ,(1,20,29,'col3',0,0,0,0)
 ,(1,20,31,'col3',3,0,0,0)
 ,(1,20,33,'col3',4,0,0,0)
 ,(1,20,34,'social',0,0,0,0)
 ,(1,20,35,'social',1,0,0,0)
 ,(1,20,36,'social',2,0,0,0)
 ,(1,20,37,'social',4,0,0,0)
 ,(1,20,38,'social',5,0,0,0)
 ,(1,20,39,'social',6,0,0,0)
 ,(1,20,40,'social',3,0,0,0)
 ,(1,20,41,'contact',0,0,0,0)
 ,(1,20,42,'contact',1,0,0,0)
 ,(1,20,43,'contact',2,0,0,0)
 ,(1,20,44,'actualité',0,0,0,0)
 ,(1,20,45,'actualité',1,0,0,0)
 ,(1,20,46,'actualité',2,0,0,0)
 ,(1,20,47,'actualité',3,0,0,0)
 ,(1,20,48,'actualité',4,0,0,0)
 ,(1,20,49,'Menu1',0,0,0,0)
 ,(1,20,50,'contenu',0,0,0,0)
 ,(1,20,57,'col1',2,1,0,0)
 ,(1,20,58,'col2',2,1,0,0)
 ,(1,20,59,'col3',2,1,0,0)
 ,(1,21,16,'Menu',0,0,0,0)
 ,(1,21,22,'col1',2,0,0,0)
 ,(1,21,23,'col1',3,0,0,0)
 ,(1,21,24,'col2',0,0,0,0)
 ,(1,21,26,'col2',2,0,0,0)
 ,(1,21,27,'col2',3,0,0,0)
 ,(1,21,28,'col1',0,0,0,0)
 ,(1,21,29,'col3',0,0,0,0)
 ,(1,21,31,'col3',2,0,0,0)
 ,(1,21,33,'col3',3,0,0,0)
 ,(1,21,34,'social',0,0,0,0)
 ,(1,21,35,'social',1,0,0,0)
 ,(1,21,36,'social',2,0,0,0)
 ,(1,21,37,'social',4,0,0,0)
 ,(1,21,38,'social',5,0,0,0)
 ,(1,21,39,'social',6,0,0,0)
 ,(1,21,40,'social',3,0,0,0)
 ,(1,21,41,'contact',0,0,0,0)
 ,(1,21,42,'contact',1,0,0,0)
 ,(1,21,43,'contact',2,0,0,0)
 ,(1,21,44,'actualité',0,0,0,0)
 ,(1,21,45,'actualité',1,0,0,0)
 ,(1,21,46,'actualité',2,0,0,0)
 ,(1,21,47,'actualité',3,0,0,0)
 ,(1,21,48,'actualité',4,0,0,0)
 ,(1,21,49,'Menu1',0,0,0,0)
 ,(1,21,50,'contenu',0,0,0,0)
 ,(1,21,57,'col1',1,0,0,0)
 ,(1,21,58,'col2',1,0,0,0)
 ,(1,21,59,'col3',1,0,0,0)
 ,(1,21,60,'contenu',1,1,0,0)
 ,(1,22,16,'Menu',0,0,0,0)
 ,(1,22,22,'col1',2,0,0,0)
 ,(1,22,23,'col1',3,0,0,0)
 ,(1,22,24,'col2',0,0,0,0)
 ,(1,22,26,'col2',2,0,0,0)
 ,(1,22,27,'col2',3,0,0,0)
 ,(1,22,28,'col1',0,0,0,0)
 ,(1,22,29,'col3',0,0,0,0)
 ,(1,22,31,'col3',2,0,0,0)
 ,(1,22,33,'col3',3,0,0,0)
 ,(1,22,34,'social',0,0,0,0)
 ,(1,22,35,'social',1,0,0,0)
 ,(1,22,36,'social',2,0,0,0)
 ,(1,22,37,'social',4,0,0,0)
 ,(1,22,38,'social',5,0,0,0)
 ,(1,22,39,'social',6,0,0,0)
 ,(1,22,40,'social',3,0,0,0)
 ,(1,22,41,'contact',0,0,0,0)
 ,(1,22,42,'contact',1,0,0,0)
 ,(1,22,43,'contact',2,0,0,0)
 ,(1,22,44,'actualité',0,0,0,0)
 ,(1,22,45,'actualité',1,0,0,0)
 ,(1,22,46,'actualité',2,0,0,0)
 ,(1,22,47,'actualité',3,0,0,0)
 ,(1,22,48,'actualité',4,0,0,0)
 ,(1,22,49,'Menu1',0,0,0,0)
 ,(1,22,50,'contenu',0,0,0,0)
 ,(1,22,57,'col1',1,0,0,0)
 ,(1,22,58,'col2',1,0,0,0)
 ,(1,22,59,'col3',1,0,0,0)
 ,(1,22,62,'contenu',1,1,0,0)
 ,(1,23,16,'Menu',0,0,0,0)
 ,(1,23,22,'col1',2,0,0,0)
 ,(1,23,23,'col1',3,0,0,0)
 ,(1,23,24,'col2',0,0,0,0)
 ,(1,23,26,'col2',2,0,0,0)
 ,(1,23,27,'col2',3,0,0,0)
 ,(1,23,28,'col1',0,0,0,0)
 ,(1,23,29,'col3',0,0,0,0)
 ,(1,23,31,'col3',2,0,0,0)
 ,(1,23,33,'col3',3,0,0,0)
 ,(1,23,34,'social',0,0,0,0)
 ,(1,23,35,'social',1,0,0,0)
 ,(1,23,36,'social',2,0,0,0)
 ,(1,23,37,'social',4,0,0,0)
 ,(1,23,38,'social',5,0,0,0)
 ,(1,23,39,'social',6,0,0,0)
 ,(1,23,40,'social',3,0,0,0)
 ,(1,23,41,'contact',0,0,0,0)
 ,(1,23,42,'contact',1,0,0,0)
 ,(1,23,43,'contact',2,0,0,0)
 ,(1,23,44,'actualité',0,0,0,0)
 ,(1,23,45,'actualité',1,0,0,0)
 ,(1,23,46,'actualité',2,0,0,0)
 ,(1,23,47,'actualité',3,0,0,0)
 ,(1,23,48,'actualité',4,0,0,0)
 ,(1,23,49,'Menu1',0,0,0,0)
 ,(1,23,50,'contenu',0,0,0,0)
 ,(1,23,57,'col1',1,0,0,0)
 ,(1,23,58,'col2',1,0,0,0)
 ,(1,23,59,'col3',1,0,0,0)
 ,(1,23,62,'contenu',1,0,0,0)
 ,(1,24,16,'Menu',0,0,0,0)
 ,(1,24,22,'col1',2,0,0,0)
 ,(1,24,23,'col1',3,0,0,0)
 ,(1,24,24,'col2',0,0,0,0)
 ,(1,24,26,'col2',2,0,0,0)
 ,(1,24,27,'col2',3,0,0,0)
 ,(1,24,28,'col1',0,0,0,0)
 ,(1,24,29,'col3',0,0,0,0)
 ,(1,24,31,'col3',2,0,0,0)
 ,(1,24,33,'col3',3,0,0,0)
 ,(1,24,34,'social',0,0,0,0)
 ,(1,24,35,'social',1,0,0,0)
 ,(1,24,36,'social',2,0,0,0)
 ,(1,24,37,'social',4,0,0,0)
 ,(1,24,38,'social',5,0,0,0)
 ,(1,24,39,'social',6,0,0,0)
 ,(1,24,40,'social',3,0,0,0)
 ,(1,24,41,'contact',0,0,0,0)
 ,(1,24,42,'contact',1,0,0,0)
 ,(1,24,43,'contact',2,0,0,0)
 ,(1,24,44,'actualité',0,0,0,0)
 ,(1,24,45,'actualité',1,0,0,0)
 ,(1,24,46,'actualité',2,0,0,0)
 ,(1,24,47,'actualité',3,0,0,0)
 ,(1,24,48,'actualité',4,0,0,0)
 ,(1,24,49,'Menu1',0,0,0,0)
 ,(1,24,50,'contenu',0,0,0,0)
 ,(1,24,57,'col1',1,0,0,0)
 ,(1,24,58,'col2',1,0,0,0)
 ,(1,24,59,'col3',1,0,0,0)
 ,(1,24,63,'contenu',1,1,0,0)
 ,(1,25,16,'Menu',0,0,0,0)
 ,(1,25,22,'col1',2,0,0,0)
 ,(1,25,23,'col1',3,0,0,0)
 ,(1,25,24,'col2',0,0,0,0)
 ,(1,25,26,'col2',2,0,0,0)
 ,(1,25,27,'col2',3,0,0,0)
 ,(1,25,28,'col1',0,0,0,0)
 ,(1,25,29,'col3',0,0,0,0)
 ,(1,25,31,'col3',2,0,0,0)
 ,(1,25,33,'col3',3,0,0,0)
 ,(1,25,34,'social',0,0,0,0)
 ,(1,25,35,'social',1,0,0,0)
 ,(1,25,36,'social',2,0,0,0)
 ,(1,25,37,'social',4,0,0,0)
 ,(1,25,38,'social',5,0,0,0)
 ,(1,25,39,'social',6,0,0,0)
 ,(1,25,40,'social',3,0,0,0)
 ,(1,25,41,'contact',0,0,0,0)
 ,(1,25,42,'contact',1,0,0,0)
 ,(1,25,43,'contact',2,0,0,0)
 ,(1,25,44,'actualité',0,0,0,0)
 ,(1,25,45,'actualité',1,0,0,0)
 ,(1,25,46,'actualité',2,0,0,0)
 ,(1,25,47,'actualité',3,0,0,0)
 ,(1,25,48,'actualité',4,0,0,0)
 ,(1,25,49,'Menu1',0,0,0,0)
 ,(1,25,50,'contenu',0,0,0,0)
 ,(1,25,57,'col1',1,0,0,0)
 ,(1,25,58,'col2',1,0,0,0)
 ,(1,25,59,'col3',1,0,0,0)
 ,(1,25,63,'contenu',1,0,0,0)
 ,(1,26,16,'Menu',0,0,0,0)
 ,(1,26,22,'col1',2,0,0,0)
 ,(1,26,23,'col1',3,0,0,0)
 ,(1,26,24,'col2',0,0,0,0)
 ,(1,26,26,'col2',2,0,0,0)
 ,(1,26,27,'col2',3,0,0,0)
 ,(1,26,28,'col1',0,0,0,0)
 ,(1,26,29,'col3',0,0,0,0)
 ,(1,26,31,'col3',2,0,0,0)
 ,(1,26,33,'col3',3,0,0,0)
 ,(1,26,34,'social',0,0,0,0)
 ,(1,26,35,'social',1,0,0,0)
 ,(1,26,36,'social',2,0,0,0)
 ,(1,26,37,'social',4,0,0,0)
 ,(1,26,38,'social',5,0,0,0)
 ,(1,26,39,'social',6,0,0,0)
 ,(1,26,40,'social',3,0,0,0)
 ,(1,26,41,'contact',0,0,0,0)
 ,(1,26,42,'contact',1,0,0,0)
 ,(1,26,43,'contact',2,0,0,0)
 ,(1,26,44,'actualité',0,0,0,0)
 ,(1,26,45,'actualité',1,0,0,0)
 ,(1,26,46,'actualité',2,0,0,0)
 ,(1,26,47,'actualité',3,0,0,0)
 ,(1,26,48,'actualité',4,0,0,0)
 ,(1,26,49,'Menu1',0,0,0,0)
 ,(1,26,50,'contenu',0,0,0,0)
 ,(1,26,57,'col1',1,0,0,0)
 ,(1,26,58,'col2',1,0,0,0)
 ,(1,26,59,'col3',1,0,0,0)
 ,(1,26,64,'contenu',1,1,0,0)
 ,(1,27,16,'Menu',0,0,0,0)
 ,(1,27,22,'col1',2,0,0,0)
 ,(1,27,23,'col1',3,0,0,0)
 ,(1,27,24,'col2',0,0,0,0)
 ,(1,27,26,'col2',2,0,0,0)
 ,(1,27,27,'col2',3,0,0,0)
 ,(1,27,28,'col1',0,0,0,0)
 ,(1,27,29,'col3',0,0,0,0)
 ,(1,27,31,'col3',2,0,0,0)
 ,(1,27,33,'col3',3,0,0,0)
 ,(1,27,34,'social',0,0,0,0)
 ,(1,27,35,'social',1,0,0,0)
 ,(1,27,36,'social',2,0,0,0)
 ,(1,27,37,'social',4,0,0,0)
 ,(1,27,38,'social',5,0,0,0)
 ,(1,27,39,'social',6,0,0,0)
 ,(1,27,40,'social',3,0,0,0)
 ,(1,27,41,'contact',0,0,0,0)
 ,(1,27,42,'contact',1,0,0,0)
 ,(1,27,43,'contact',2,0,0,0)
 ,(1,27,44,'actualité',0,0,0,0)
 ,(1,27,45,'actualité',1,0,0,0)
 ,(1,27,46,'actualité',2,0,0,0)
 ,(1,27,47,'actualité',3,0,0,0)
 ,(1,27,48,'actualité',4,0,0,0)
 ,(1,27,49,'Menu1',0,0,0,0)
 ,(1,27,50,'contenu',0,0,0,0)
 ,(1,27,57,'col1',1,0,0,0)
 ,(1,27,58,'col2',1,0,0,0)
 ,(1,27,59,'col3',1,0,0,0)
 ,(1,27,75,'contenu',1,1,0,0)
 ,(1,28,16,'Menu',0,0,0,0)
 ,(1,28,22,'col1',2,0,0,0)
 ,(1,28,23,'col1',3,0,0,0)
 ,(1,28,24,'col2',0,0,0,0)
 ,(1,28,26,'col2',2,0,0,0)
 ,(1,28,27,'col2',3,0,0,0)
 ,(1,28,28,'col1',0,0,0,0)
 ,(1,28,29,'col3',0,0,0,0)
 ,(1,28,31,'col3',2,0,0,0)
 ,(1,28,33,'col3',3,0,0,0)
 ,(1,28,34,'social',0,0,0,0)
 ,(1,28,35,'social',1,0,0,0)
 ,(1,28,36,'social',2,0,0,0)
 ,(1,28,37,'social',4,0,0,0)
 ,(1,28,38,'social',5,0,0,0)
 ,(1,28,39,'social',6,0,0,0)
 ,(1,28,40,'social',3,0,0,0)
 ,(1,28,41,'contact',0,0,0,0)
 ,(1,28,42,'contact',1,0,0,0)
 ,(1,28,43,'contact',2,0,0,0)
 ,(1,28,44,'actualité',0,0,0,0)
 ,(1,28,45,'actualité',1,0,0,0)
 ,(1,28,46,'actualité',2,0,0,0)
 ,(1,28,47,'actualité',3,0,0,0)
 ,(1,28,48,'actualité',4,0,0,0)
 ,(1,28,49,'Menu1',0,0,0,0)
 ,(1,28,50,'contenu',0,0,0,0)
 ,(1,28,57,'col1',1,0,0,0)
 ,(1,28,58,'col2',1,0,0,0)
 ,(1,28,59,'col3',1,0,0,0)
 ,(1,28,76,'contenu',1,1,0,0)
 ,(1,29,16,'Menu',0,0,0,0)
 ,(1,29,22,'col1',2,0,0,0)
 ,(1,29,23,'col1',3,0,0,0)
 ,(1,29,24,'col2',0,0,0,0)
 ,(1,29,26,'col2',2,0,0,0)
 ,(1,29,27,'col2',3,0,0,0)
 ,(1,29,28,'col1',0,0,0,0)
 ,(1,29,29,'col3',0,0,0,0)
 ,(1,29,31,'col3',2,0,0,0)
 ,(1,29,33,'col3',3,0,0,0)
 ,(1,29,34,'social',0,0,0,0)
 ,(1,29,35,'social',1,0,0,0)
 ,(1,29,36,'social',2,0,0,0)
 ,(1,29,37,'social',4,0,0,0)
 ,(1,29,38,'social',5,0,0,0)
 ,(1,29,39,'social',6,0,0,0)
 ,(1,29,40,'social',3,0,0,0)
 ,(1,29,41,'contact',0,0,0,0)
 ,(1,29,42,'contact',1,0,0,0)
 ,(1,29,43,'contact',2,0,0,0)
 ,(1,29,44,'actualité',0,0,0,0)
 ,(1,29,45,'actualité',1,0,0,0)
 ,(1,29,46,'actualité',2,0,0,0)
 ,(1,29,47,'actualité',3,0,0,0)
 ,(1,29,48,'actualité',4,0,0,0)
 ,(1,29,49,'Menu1',0,0,0,0)
 ,(1,29,50,'contenu',0,0,0,0)
 ,(1,29,57,'col1',1,0,0,0)
 ,(1,29,58,'col2',1,0,0,0)
 ,(1,29,59,'col3',1,0,0,0)
 ,(1,29,76,'contenu',1,0,0,0)
 ,(1,30,16,'Menu',0,0,0,0)
 ,(1,30,22,'col1',2,0,0,0)
 ,(1,30,23,'col1',3,0,0,0)
 ,(1,30,24,'col2',0,0,0,0)
 ,(1,30,26,'col2',2,0,0,0)
 ,(1,30,27,'col2',3,0,0,0)
 ,(1,30,28,'col1',0,0,0,0)
 ,(1,30,29,'col3',0,0,0,0)
 ,(1,30,31,'col3',2,0,0,0)
 ,(1,30,33,'col3',3,0,0,0)
 ,(1,30,34,'social',0,0,0,0)
 ,(1,30,35,'social',1,0,0,0)
 ,(1,30,36,'social',2,0,0,0)
 ,(1,30,37,'social',4,0,0,0)
 ,(1,30,38,'social',5,0,0,0)
 ,(1,30,39,'social',6,0,0,0)
 ,(1,30,40,'social',3,0,0,0)
 ,(1,30,41,'contact',0,0,0,0)
 ,(1,30,42,'contact',1,0,0,0)
 ,(1,30,43,'contact',2,0,0,0)
 ,(1,30,44,'actualité',0,0,0,0)
 ,(1,30,45,'actualité',1,0,0,0)
 ,(1,30,46,'actualité',2,0,0,0)
 ,(1,30,47,'actualité',3,0,0,0)
 ,(1,30,48,'actualité',4,0,0,0)
 ,(1,30,49,'Menu1',0,0,0,0)
 ,(1,30,50,'contenu',0,0,0,0)
 ,(1,30,57,'col1',1,0,0,0)
 ,(1,30,58,'col2',1,0,0,0)
 ,(1,30,59,'col3',1,0,0,0)
 ,(1,30,77,'contenu',1,1,0,0)
 ,(1,31,16,'Menu',0,0,0,0)
 ,(1,31,22,'col1',2,0,0,0)
 ,(1,31,23,'col1',3,0,0,0)
 ,(1,31,24,'col2',0,0,0,0)
 ,(1,31,26,'col2',2,0,0,0)
 ,(1,31,27,'col2',3,0,0,0)
 ,(1,31,28,'col1',0,0,0,0)
 ,(1,31,29,'col3',0,0,0,0)
 ,(1,31,31,'col3',2,0,0,0)
 ,(1,31,33,'col3',3,0,0,0)
 ,(1,31,34,'social',0,0,0,0)
 ,(1,31,35,'social',1,0,0,0)
 ,(1,31,36,'social',2,0,0,0)
 ,(1,31,37,'social',4,0,0,0)
 ,(1,31,38,'social',5,0,0,0)
 ,(1,31,39,'social',6,0,0,0)
 ,(1,31,40,'social',3,0,0,0)
 ,(1,31,41,'contact',0,0,0,0)
 ,(1,31,42,'contact',1,0,0,0)
 ,(1,31,43,'contact',2,0,0,0)
 ,(1,31,44,'actualité',0,0,0,0)
 ,(1,31,45,'actualité',1,0,0,0)
 ,(1,31,46,'actualité',2,0,0,0)
 ,(1,31,47,'actualité',3,0,0,0)
 ,(1,31,48,'actualité',4,0,0,0)
 ,(1,31,49,'Menu1',0,0,0,0)
 ,(1,31,50,'contenu',0,0,0,0)
 ,(1,31,77,'contenu',1,0,0,0)
 ,(1,31,78,'col1',1,1,0,0)
 ,(1,31,79,'col2',1,1,0,0)
 ,(1,31,80,'col3',1,1,0,0)
 ,(1,32,16,'Menu',0,0,0,0)
 ,(1,32,22,'col1',2,0,0,0)
 ,(1,32,23,'col1',3,0,0,0)
 ,(1,32,24,'col2',0,0,0,0)
 ,(1,32,26,'col2',2,0,0,0)
 ,(1,32,27,'col2',3,0,0,0)
 ,(1,32,28,'col1',0,0,0,0)
 ,(1,32,29,'col3',0,0,0,0)
 ,(1,32,31,'col3',2,0,0,0)
 ,(1,32,33,'col3',3,0,0,0)
 ,(1,32,34,'social',0,0,0,0)
 ,(1,32,35,'social',1,0,0,0)
 ,(1,32,36,'social',2,0,0,0)
 ,(1,32,37,'social',4,0,0,0)
 ,(1,32,38,'social',5,0,0,0)
 ,(1,32,39,'social',6,0,0,0)
 ,(1,32,40,'social',3,0,0,0)
 ,(1,32,41,'contact',0,0,0,0)
 ,(1,32,42,'contact',1,0,0,0)
 ,(1,32,43,'contact',2,0,0,0)
 ,(1,32,44,'actualité',0,0,0,0)
 ,(1,32,45,'actualité',1,0,0,0)
 ,(1,32,46,'actualité',2,0,0,0)
 ,(1,32,47,'actualité',3,0,0,0)
 ,(1,32,48,'actualité',4,0,0,0)
 ,(1,32,49,'Menu1',0,0,0,0)
 ,(1,32,50,'contenu',0,0,0,0)
 ,(1,32,77,'contenu',1,0,0,0)
 ,(1,32,78,'col1',1,0,0,0)
 ,(1,32,79,'col2',1,0,0,0)
 ,(1,32,80,'col3',1,0,0,0)
 ,(1,33,16,'Menu',0,0,0,0)
 ,(1,33,22,'col1',2,0,0,0)
 ,(1,33,23,'col1',3,0,0,0)
 ,(1,33,24,'col2',0,0,0,0)
 ,(1,33,26,'col2',2,0,0,0)
 ,(1,33,27,'col2',3,0,0,0)
 ,(1,33,28,'col1',0,0,0,0)
 ,(1,33,29,'col3',0,0,0,0)
 ,(1,33,31,'col3',2,0,0,0)
 ,(1,33,33,'col3',3,0,0,0)
 ,(1,33,34,'social',0,0,0,0)
 ,(1,33,35,'social',1,0,0,0)
 ,(1,33,36,'social',2,0,0,0)
 ,(1,33,37,'social',4,0,0,0)
 ,(1,33,38,'social',5,0,0,0)
 ,(1,33,39,'social',6,0,0,0)
 ,(1,33,40,'social',3,0,0,0)
 ,(1,33,41,'contact',0,0,0,0)
 ,(1,33,42,'contact',1,0,0,0)
 ,(1,33,43,'contact',2,0,0,0)
 ,(1,33,44,'actualité',0,0,0,0)
 ,(1,33,45,'actualité',1,0,0,0)
 ,(1,33,46,'actualité',2,0,0,0)
 ,(1,33,47,'actualité',3,0,0,0)
 ,(1,33,48,'actualité',4,0,0,0)
 ,(1,33,49,'Menu1',0,0,0,0)
 ,(1,33,50,'contenu',0,0,0,0)
 ,(1,33,77,'contenu',1,0,0,0)
 ,(1,33,78,'col1',1,0,0,0)
 ,(1,33,79,'col2',1,0,0,0)
 ,(1,33,80,'col3',1,0,0,0)
 ,(105,1,1,'Header',0,1,0,0)
 ,(105,1,2,'Column 1',0,1,0,0)
 ,(105,1,3,'Column 2',0,1,0,0)
 ,(105,1,4,'Column 3',0,1,0,0)
 ,(105,1,5,'Column 4',0,1,0,0)
 ,(106,1,6,'Primary',0,1,0,0)
 ,(106,1,7,'Primary',1,1,0,0)
 ,(106,1,8,'Secondary 1',0,1,0,0)
 ,(106,1,9,'Secondary 2',0,1,0,0)
 ,(106,1,10,'Secondary 3',0,1,0,0)
 ,(106,1,11,'Secondary 4',0,1,0,0)
 ,(106,1,12,'Secondary 5',0,1,0,0)
 ,(122,2,17,'Menu',0,1,0,0)
 ,(122,3,17,'Menu',0,0,0,0)
 ,(122,4,17,'Menu',0,0,0,0)
 ,(122,5,17,'Menu',0,0,0,0)
 ,(122,6,17,'Menu',0,0,0,0)
 ,(122,7,17,'Menu',0,0,0,0)
 ,(122,8,17,'Menu',0,0,0,0)
 ,(122,9,17,'Menu',0,0,0,0)
 ,(122,10,17,'Menu',0,0,0,0)
 ,(122,11,17,'Menu',0,0,0,0)
 ,(122,11,67,'Ariane',0,1,0,0)
 ,(122,12,17,'Menu',0,0,0,0)
 ,(122,12,67,'Ariane',0,0,0,0)
 ,(122,13,17,'Menu',0,0,0,0)
 ,(122,13,67,'Ariane',0,0,0,0)
 ,(122,13,74,'Produits : Layout 1 : Cell 1',0,1,0,0)
 ,(122,14,17,'Menu',0,0,0,0)
 ,(122,14,67,'Ariane',0,0,0,0)
 ,(122,14,74,'Produits : Layout 1 : Cell 1',0,0,0,0)
 ,(122,14,82,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',0,1,0,0)
 ,(122,14,83,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',0,1,0,0)
 ,(122,14,84,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',1,1,0,0)
 ,(122,14,85,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',2,1,0,0)
 ,(122,14,86,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',1,1,0,0)
 ,(122,14,87,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',2,1,0,0)
 ,(122,15,17,'Menu',0,0,0,0)
 ,(122,15,67,'Ariane',0,0,0,0)
 ,(122,15,74,'Produits : Layout 1 : Cell 1',0,0,0,0)
 ,(122,15,82,'Produits : Layout 1 : Cell 2',0,0,0,0)
 ,(122,15,83,'Produits : Layout 1 : Cell 2',3,0,0,0)
 ,(122,15,84,'Produits : Layout 1 : Cell 2',1,0,0,0)
 ,(122,15,85,'Produits : Layout 1 : Cell 2',2,0,0,0)
 ,(122,15,86,'Produits : Layout 1 : Cell 2',4,0,0,0)
 ,(122,15,87,'Produits : Layout 1 : Cell 2',5,0,0,0)
 ,(122,15,88,'Produits',7,1,0,0)
 ,(122,16,17,'Menu',0,0,0,0)
 ,(122,16,67,'Ariane',0,0,0,0)
 ,(122,16,74,'Produits',0,0,0,0)
 ,(122,16,82,'Produits',1,0,0,0)
 ,(122,16,83,'Produits',4,0,0,0)
 ,(122,16,84,'Produits',2,0,0,0)
 ,(122,16,85,'Produits',3,0,0,0)
 ,(122,16,86,'Produits',5,0,0,0)
 ,(122,16,87,'Produits',6,0,0,0)
 ,(122,16,88,'Produits',7,0,0,0)
 ,(122,17,17,'Menu',0,0,0,0)
 ,(122,17,67,'Ariane',0,0,0,0)
 ,(122,17,83,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',0,0,0,0)
 ,(122,17,89,'produits : Layout 1 : Cell 1',0,1,0,0)
 ,(122,17,90,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',0,1,0,0)
 ,(122,17,91,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',1,1,0,0)
 ,(122,17,92,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',2,1,0,0)
 ,(122,17,93,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',1,1,0,0)
 ,(122,17,94,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',2,1,0,0)
 ,(122,17,95,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',3,1,0,0)
 ,(122,18,17,'Menu',0,0,0,0)
 ,(122,18,67,'Ariane',0,0,0,0)
 ,(122,18,83,'Produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',0,0,0,0)
 ,(122,18,89,'produits : Layout 1 : Cell 1',0,0,0,0)
 ,(122,18,90,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',0,0,0,0)
 ,(122,18,91,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',1,0,0,0)
 ,(122,18,92,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 1',2,0,0,0)
 ,(122,18,93,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',1,0,0,0)
 ,(122,18,94,'produits : Layout 1 : Cell 2 : Layout 1 : Cell 2',2,0,0,0)
 ,(123,4,68,'Menu',0,1,0,0)
 ,(123,5,68,'Menu',0,0,0,0)
 ,(123,5,69,'Plan',1,1,0,0)
 ,(123,5,70,'Plan',0,1,0,0)
 ,(123,6,68,'Menu',0,0,0,0)
 ,(123,6,69,'Plan',1,0,0,0)
 ,(124,2,73,'Menu',0,1,0,0)
 ,(125,2,17,'Menu',0,0,0,0)
 ,(132,2,71,'Blog',0,1,0,0)
 ,(132,3,71,'Blog',0,0,0,0)
 ,(132,3,72,'Menu',0,1,0,0)
 ,(132,4,71,'Blog',0,0,0,0)
 ,(132,4,72,'Menu',0,0,0,0)
 ,(132,4,96,'blog',1,1,0,0);

DROP TABLE IF EXISTS CollectionVersionBlocksOutputCache;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionBlocksOutputCache VALUES(1,2,13,'Contenu','<h1><strong>Bienvenue sur mon Blog!</strong></h1>\r\n<p> </p>\r\n<p>ffsdgfd dfhg dfkg kdfg dfbgfdkd fkl fsl</p>',1548079140)
 ,(1,3,13,'Contenu','<h1><strong>Bienvenue sur mon Blog!</strong></h1>\r\n<p> </p>\r\n<p>ffsdgfd dfhg dfkg kdfg dfbgfdkd fkl fsl</p>',1548081089)
 ,(1,3,14,'Menu','\n<div id=\"HTMLBlock14\" class=\"HTMLBlock\">\n            <h2>Menu</h2>\r\n            \r\n            <ul>\r\n                <li><a href=\"index.php\">Accueil</a></li>\r\n                <li><a href=\"article.php\">Rédiger un article</a></li>\r\n            </ul></div>',1548081080)
 ,(1,4,14,'Menu','\n<div id=\"HTMLBlock14\" class=\"HTMLBlock\">\n            <h2>Menu</h2>\r\n            \r\n            <ul>\r\n                <li><a href=\"index.php\">Accueil</a></li>\r\n                <li><a href=\"article.php\">Rédiger un article</a></li>\r\n            </ul></div>',1548591864)
 ,(1,4,15,'Contenu','<h3><strong>Bienvenue sur mon Blog!</strong></h3>\r\n<p> </p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in pulvinar risus, vulputate rutrum tellus. Duis elit nisl, dictum id viverra sit amet, tempor vel mi. Praesent placerat nibh nunc, vel pellentesque mi mattis vel. Vestibulum eu cursus est. Aenean quis elit nec magna tincidunt facilisis interdum a lacus. Quisque adipiscing ante et malesuada dignissim. Donec hendrerit sapien sit amet sem luctus vestibulum. Morbi turpis odio, malesuada vitae odio vitae, vulputate consequat sapien. Morbi porta ultrices dui quis accumsan. Suspendisse euismod vestibulum metus, a egestas massa imperdiet sed.</p>\r\n<p>Nulla felis sem, varius non sagittis et, molestie ac dolor. Praesent quis auctor ante. Nam tristique risus ligula. Aliquam non est sit amet tortor luctus rutrum et non ipsum. Nulla facilisi. Mauris augue mauris, pellentesque sit amet nulla vel, luctus mattis ligula. Sed tincidunt bibendum tortor nec tempor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum blandit ligula ac ligula volutpat, id sagittis nibh blandit. Fusce egestas urna est, vitae porttitor massa placerat condimentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel augue libero. Mauris elementum molestie tortor quis rhoncus.</p>\r\n<p>Etiam iaculis varius nibh ut semper. Mauris lobortis, magna ut ornare posuere, metus felis tempor tellus, id semper lectus velit dapibus felis. Vivamus sed semper massa. Praesent sit amet euismod libero, ut euismod neque. Nulla a consequat nisi. Nullam et libero et ante cursus interdum. Nullam commodo lacinia gravida.</p>\r\n<p>Donec pellentesque turpis id purus congue condimentum. Aenean cursus at libero a blandit. Aenean vulputate dolor at mauris mollis convallis. Praesent nec mi sollicitudin, ultrices ligula elementum, mollis velit. Praesent dapibus vitae dolor quis sagittis. Donec commodo vitae nunc a aliquam. Cras viverra, enim sed adipiscing viverra, velit arcu pulvinar turpis, ac tincidunt turpis neque ut lorem. Integer ullamcorper sapien vel est consectetur imperdiet. Donec lorem ante, scelerisque quis ipsum nec, ultrices facilisis urna. Suspendisse in posuere sem. Pellentesque id ornare dolor, in tincidunt enim. Nam semper nec eros non tempor. Donec sed rutru</p>',1548082515)
 ,(1,4,16,'Menu','<ul class=\"nav\"><li class=\"nav-selected nav-path-selected\"><a href=\"/concrete5.6.2.1/\" target=\"_self\" class=\"nav-selected nav-path-selected\">Home</a></li><li class=\"\"><a href=\"/concrete5.6.2.1/index.php/presentation/\" target=\"_self\" class=\"\">Presentation</a></li><li class=\"\"><a href=\"/concrete5.6.2.1/index.php/presentation1/\" target=\"_self\" class=\"\">Presentation</a></li><li class=\"\"><a href=\"/concrete5.6.2.1/index.php/plan/\" target=\"_self\" class=\"\">Plan</a></li><li class=\"\"><a href=\"/concrete5.6.2.1/index.php/contact/\" target=\"_self\" class=\"\">Contact</a></li></ul>',1392729295)
 ,(1,5,18,'Contenu','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do.</h4>\r\n</div>\r\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\" alt=\"\" /></div>\r\n<div class=\"text-col\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p>\r\n</div>\r\n<p><a class=\"pure-button\" href=\"#\">Learn more →</a></p>',1550500959)
 ,(1,6,19,'col1','<div class=\"titre-col\">\r\n<h3>Complete Solution</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>A tool anything and everything you can think</h4>\r\n</div>',1550501370)
 ,(1,6,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1550501512)
 ,(1,6,21,'col1','\n<div id=\"HTMLBlock21\" class=\"HTMLBlock\">\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n				<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1550501539)
 ,(1,7,19,'col1','<div class=\"titre-col\">\r\n<h3>Complete Solution</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>A tool anything and everything you can think</h4>\r\n</div>',1552209754)
 ,(1,7,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552209755)
 ,(1,7,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552209622)
 ,(1,7,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552209643)
 ,(1,7,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552210229)
 ,(1,7,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552209871)
 ,(1,7,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552210006)
 ,(1,7,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552210033)
 ,(1,7,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552210164)
 ,(1,7,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552212397)
 ,(1,7,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552212431)
 ,(1,7,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552212461)
 ,(1,7,32,'col3','\n<div id=\"HTMLBlock32\" class=\"HTMLBlock\">\n	<div class=\"image-col\"><img src=\"<?php echo $this->getThemePath(); ?>/assets/images/imagecol1.jpg\"></div>\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552212451)
 ,(1,7,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552212503)
 ,(1,7,34,'col4','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552213491)
 ,(1,7,35,'col4','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552213513)
 ,(1,7,36,'col4','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552213656)
 ,(1,7,37,'col4','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552213686)
 ,(1,7,38,'col4','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552213708)
 ,(1,7,39,'col4','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552213730)
 ,(1,8,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552213860)
 ,(1,8,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552213860)
 ,(1,8,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552213860)
 ,(1,8,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552213860)
 ,(1,8,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552213860)
 ,(1,8,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552213860)
 ,(1,8,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552213860)
 ,(1,8,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552213859)
 ,(1,8,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552213860)
 ,(1,8,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552213860)
 ,(1,8,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552213860)
 ,(1,8,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552213860)
 ,(1,8,34,'col4','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552213860)
 ,(1,8,35,'col4','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552213860)
 ,(1,8,36,'col4','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552213860)
 ,(1,8,37,'col4','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552213860)
 ,(1,8,38,'col4','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552213860)
 ,(1,8,39,'col4','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552213860)
 ,(1,8,40,'col4','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552213844)
 ,(1,9,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552214040)
 ,(1,9,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552214040)
 ,(1,9,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552214040)
 ,(1,9,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552214040)
 ,(1,9,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552214040)
 ,(1,9,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552214040)
 ,(1,9,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552214040)
 ,(1,9,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552214040)
 ,(1,9,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552214040)
 ,(1,9,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552214040)
 ,(1,9,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552214040)
 ,(1,9,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552214041)
 ,(1,9,34,'col4','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552214041)
 ,(1,9,35,'col4','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552214041)
 ,(1,9,36,'col4','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552214041)
 ,(1,9,37,'col4','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552214041)
 ,(1,9,38,'col4','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552214041)
 ,(1,9,39,'col4','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552214041)
 ,(1,9,40,'col4','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552214041)
 ,(1,9,41,'col5','\n<div id=\"HTMLBlock41\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Contact</h3></div></div>',1552213972)
 ,(1,9,42,'col5','\n<div id=\"HTMLBlock42\" class=\"HTMLBlock\">\n<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form></div>',1552213990)
 ,(1,9,43,'col5','\n<div id=\"HTMLBlock43\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a></div>',1552214026)
 ,(1,10,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552214297)
 ,(1,10,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552214297)
 ,(1,10,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552214297)
 ,(1,10,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552214297)
 ,(1,10,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552214297)
 ,(1,10,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552214297)
 ,(1,10,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552214297)
 ,(1,10,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552214297)
 ,(1,10,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552214297)
 ,(1,10,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552214297)
 ,(1,10,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552214297)
 ,(1,10,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552214297)
 ,(1,10,34,'col4','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552214297)
 ,(1,10,35,'col4','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552214297)
 ,(1,10,36,'col4','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552214297)
 ,(1,10,37,'col4','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552214297)
 ,(1,10,38,'col4','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552214297)
 ,(1,10,39,'col4','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552214297)
 ,(1,10,40,'col4','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552214297)
 ,(1,10,41,'col5','\n<div id=\"HTMLBlock41\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Contact</h3></div></div>',1552214297)
 ,(1,10,42,'col5','\n<div id=\"HTMLBlock42\" class=\"HTMLBlock\">\n<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form></div>',1552214298)
 ,(1,10,43,'col5','\n<div id=\"HTMLBlock43\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a></div>',1552214298)
 ,(1,10,44,'col6','\n<div id=\"HTMLBlock44\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>News Updates</h3></div></div>',1552214137)
 ,(1,10,45,'col6','\n<div id=\"HTMLBlock45\" class=\"HTMLBlock\">\n				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div></div>',1552214219)
 ,(1,10,48,'col6','\n<div id=\"HTMLBlock48\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a></div>',1552214288)
 ,(1,11,18,'contenu','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do.</h4>\r\n</div>\r\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\" alt=\"\" /></div>\r\n<div class=\"text-col\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p>\r\n</div>\r\n<p><a class=\"pure-button\" href=\"#\">Learn more →</a></p>',1552220030)
 ,(1,11,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552217345)
 ,(1,11,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552217345)
 ,(1,11,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552217345)
 ,(1,11,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552217345)
 ,(1,11,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552217345)
 ,(1,11,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552217345)
 ,(1,11,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552217345)
 ,(1,11,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552217345)
 ,(1,11,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552217345)
 ,(1,11,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552217345)
 ,(1,11,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552217345)
 ,(1,11,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552217345)
 ,(1,11,34,'col4','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552217345)
 ,(1,11,34,'social','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552219651)
 ,(1,11,35,'col4','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552217345)
 ,(1,11,35,'social','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552219651)
 ,(1,11,36,'col4','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552217345)
 ,(1,11,36,'social','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552219651)
 ,(1,11,37,'col4','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552217345)
 ,(1,11,37,'social','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552219651)
 ,(1,11,38,'col4','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552217346)
 ,(1,11,38,'social','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552219651)
 ,(1,11,39,'col4','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552217346)
 ,(1,11,39,'social','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552219651)
 ,(1,11,40,'col4','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552217345)
 ,(1,11,40,'social','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552219651)
 ,(1,11,41,'col5','\n<div id=\"HTMLBlock41\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Contact</h3></div></div>',1552217346)
 ,(1,11,41,'contact','\n<div id=\"HTMLBlock41\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Contact</h3></div></div>',1552219797)
 ,(1,11,42,'col5','\n<div id=\"HTMLBlock42\" class=\"HTMLBlock\">\n<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form></div>',1552217346)
 ,(1,11,42,'contact','\n<div id=\"HTMLBlock42\" class=\"HTMLBlock\">\n<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form></div>',1552219797)
 ,(1,11,43,'col5','\n<div id=\"HTMLBlock43\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a></div>',1552217346)
 ,(1,11,43,'contact','\n<div id=\"HTMLBlock43\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a></div>',1552219797)
 ,(1,11,44,'actualité','\n<div id=\"HTMLBlock44\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>News Updates</h3></div></div>',1552219864)
 ,(1,11,44,'col6','\n<div id=\"HTMLBlock44\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>News Updates</h3></div></div>',1552217346)
 ,(1,11,45,'actualité','\n<div id=\"HTMLBlock45\" class=\"HTMLBlock\">\n				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div></div>',1552219864)
 ,(1,11,45,'col6','\n<div id=\"HTMLBlock45\" class=\"HTMLBlock\">\n				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div></div>',1552217346)
 ,(1,11,48,'actualité','\n<div id=\"HTMLBlock48\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a></div>',1552219864)
 ,(1,11,48,'col6','\n<div id=\"HTMLBlock48\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a></div>',1552217346)
 ,(1,12,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552220085)
 ,(1,12,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552220085)
 ,(1,12,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552220085)
 ,(1,12,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552220085)
 ,(1,12,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552220085)
 ,(1,12,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552220085)
 ,(1,12,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552220085)
 ,(1,12,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552220085)
 ,(1,12,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552220085)
 ,(1,12,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552220085)
 ,(1,12,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552220085)
 ,(1,12,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552220085)
 ,(1,12,34,'social','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552220085)
 ,(1,12,35,'social','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552220085)
 ,(1,12,36,'social','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552220085)
 ,(1,12,37,'social','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552220085)
 ,(1,12,38,'social','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552220086)
 ,(1,12,39,'social','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552220086)
 ,(1,12,40,'social','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552220085)
 ,(1,12,41,'contact','\n<div id=\"HTMLBlock41\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Contact</h3></div></div>',1552220086)
 ,(1,12,42,'contact','\n<div id=\"HTMLBlock42\" class=\"HTMLBlock\">\n<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form></div>',1552220086)
 ,(1,12,43,'contact','\n<div id=\"HTMLBlock43\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a></div>',1552220086)
 ,(1,12,44,'actualité','\n<div id=\"HTMLBlock44\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>News Updates</h3></div></div>',1552220086)
 ,(1,12,45,'actualité','\n<div id=\"HTMLBlock45\" class=\"HTMLBlock\">\n				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div></div>',1552220086)
 ,(1,12,48,'actualité','\n<div id=\"HTMLBlock48\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a></div>',1552220086)
 ,(1,12,50,'contenu','',1552220335)
 ,(1,15,20,'col1','\n<div id=\"HTMLBlock20\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552221579)
 ,(1,15,22,'col1','\n<div id=\"HTMLBlock22\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552221579)
 ,(1,15,23,'col1','\n<div id=\"HTMLBlock23\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552221579)
 ,(1,15,24,'col2','\n<div id=\"HTMLBlock24\" class=\"HTMLBlock\">\n				<div class=\"titre-col\"><h3>Complete Solution</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>A tool anything and everything you can think</h4></div></div>',1552221579)
 ,(1,15,25,'col2','\n<div id=\"HTMLBlock25\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552221579)
 ,(1,15,26,'col2','\n<div id=\"HTMLBlock26\" class=\"HTMLBlock\">\n\r\n				<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552221579)
 ,(1,15,27,'col2','\n<div id=\"HTMLBlock27\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552221579)
 ,(1,15,28,'col1','<div class=\"titre-col\">\r\n<h3>Perfect Logic</h3>\r\n</div>\r\n<div class=\"sous-titre-col\">\r\n<h4>All you want your website to do</h4>\r\n</div>',1552221579)
 ,(1,15,29,'col3','\n<div id=\"HTMLBlock29\" class=\"HTMLBlock\">\n							<div class=\"titre-col\"><h3>Uber Culture</h3></div>\r\n				<div class=\"sous-titre-col\"><h4>Fresh. Modern and ready for future</h4></div></div>',1552221579)
 ,(1,15,30,'col3','\n<div id=\"HTMLBlock30\" class=\"HTMLBlock\">\n<div class=\"image-col\"><img src=\"/concrete5.6.2.1/themes/montheme/assets/images/imagecol1.jpg\"></div></div>',1552221579)
 ,(1,15,31,'col3','\n<div id=\"HTMLBlock31\" class=\"HTMLBlock\">\n<div class=\"text-col\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.</p></div>\r\n</div>',1552221579)
 ,(1,15,33,'col3','\n<div id=\"HTMLBlock33\" class=\"HTMLBlock\">\n<a class=\"pure-button\" href=\"#\">Learn more →</a></div>',1552221579)
 ,(1,15,34,'social','\n<div id=\"HTMLBlock34\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Social Connection</h3></div></div>',1552221579)
 ,(1,15,35,'social','\n<div id=\"HTMLBlock35\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552221579)
 ,(1,15,36,'social','\n<div id=\"HTMLBlock36\" class=\"HTMLBlock\">\n<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/sociaux.jpg\"></div>',1552221579)
 ,(1,15,37,'social','\n<div id=\"HTMLBlock37\" class=\"HTMLBlock\">\n<div class=\"text-col2\"><p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p></div></div>',1552221579)
 ,(1,15,38,'social','\n<div id=\"HTMLBlock38\" class=\"HTMLBlock\">\n				<form class=\"pure-form\">\r\n					<input type=\"email\" id=\"form-newsletter\" placeholder=\"Requires an email\" required>\r\n				</form></div>',1552221579)
 ,(1,15,39,'social','\n<div id=\"HTMLBlock39\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\" style=\"margin-top:34px;\">Subscribe →</a></div>',1552221579)
 ,(1,15,40,'social','\n<div id=\"HTMLBlock40\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Newsletter</h3></div></div>',1552221579)
 ,(1,15,41,'contact','\n<div id=\"HTMLBlock41\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>Contact</h3></div></div>',1552221579)
 ,(1,15,42,'contact','\n<div id=\"HTMLBlock42\" class=\"HTMLBlock\">\n<form class=\"pure-form pure-form-stacked\">\r\n    <fieldset>\r\n        <input id=\"form-contact\" type=\"email\" placeholder=\"your name\">\r\n        <input id=\"form-contact\" type=\"password\" placeholder=\"your adress mail\">\r\n		<textarea id=\"form-contact\" type=\"text\" value=\"message\" cols=\"25\" rows=\"6\" placeholder=\"message\" style=\"height:134px\"></textarea>\r\n    </fieldset>\r\n</form></div>',1552221579)
 ,(1,15,43,'contact','\n<div id=\"HTMLBlock43\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Send it →</a></div>',1552221579)
 ,(1,15,44,'actualité','\n<div id=\"HTMLBlock44\" class=\"HTMLBlock\">\n<div class=\"titre-col2\"><h3>News Updates</h3></div></div>',1552221579)
 ,(1,15,45,'actualité','\n<div id=\"HTMLBlock45\" class=\"HTMLBlock\">\n				<div class=\"news\">\r\n					<img src=\"/concrete5.6.2.1/themes/montheme/assets/images/image-news.jpg\">\r\n					<p>Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.</p>\r\n				</div></div>',1552221579)
 ,(1,15,48,'actualité','\n<div id=\"HTMLBlock48\" class=\"HTMLBlock\">\n<a class=\"pure-button pure-button-primary\" href=\"#\">Visit our Blog →</a></div>',1552221579)
 ,(1,15,50,'contenu','',1552221579)
 ,(105,1,1,'Header','	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add Pages using in-context editing.</h2></div>\n						',1548076566)
 ,(105,1,2,'Column 1','<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>',1548076566)
 ,(105,1,3,'Column 2','<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>',1548076566)
 ,(105,1,4,'Column 3','<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>',1548076566)
 ,(105,1,5,'Column 4','\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>',1548076566)
 ,(106,1,6,'Primary','\n<h1>Welcome Back</h1>\n<br/>\n\n\n\n',1394529197)
 ,(106,1,8,'Secondary 1','<div>\n<p><img src=\"http://newsflow.concrete5.org/files/1913/3314/6816/QuickTip_01_Small.png\" alt=\"QuickTip_01_Small.png\" width=\"150\" height=\"55\" /></p>\r\n<h3>Rich Text Editor</h3>\r\n<p><span>You can customize </span><span>how the editing toolbar looks to Users and what tools it includes as well as the height and width of the editing area. </span></p><div><a href=\"http://www.concrete5.org/documentation/using-concrete5/dashboard/system-and-maintenance/basics/rich-text-editor/?utm_source=newsflow&utm_medium=web&utm_content=0&utm_campaign=newsflow\" class=\"btn \" target=\"_blank\">Learn More</a></div>\n</div>\n\n',1394449999)
 ,(106,1,9,'Secondary 2','<div>\n<h3>There\'s more...</h3>\r\n<p>Haven\'t gotten enough news, concrete5 info, and random stuff? Don\'t worry, we\'ve got more. <em>(Look for new editions once a week.)</em></p><a href=\"javascript:void(0)\" onclick=\"ccm_showNewsflowOffsite(314);\" class=\"btn\">Read On</a>\n\n</div>\n\n',1394449999)
 ,(106,1,10,'Secondary 3','<h6>Featured Theme</h6>\n	<div class=\"clearfix\">\n	<img src=\"http://www.concrete5.org/files/8213/9259/6949/theme_hi_vis_icon.png\" width=\"97\" height=\"97\" style=\"float: left; margin-right: 10px; margin-bottom: 10px\" />\n	<h3>Hi-Vis</h3>\n	<p>A contemporary, responsive Concrete5 theme with full-screen backgrounds</p>\n	</div>\n	\n	<a href=\"javascript:void(0)\" onclick=\"ccm_getMarketplaceItemDetails(1665)\" href=\"http://www.concrete5.org/marketplace/themes/hi-vis\" class=\"btn\">Learn More</a>\n',1394450000)
 ,(106,1,11,'Secondary 4','<h6>Featured Add-On</h6>\n	<div class=\"clearfix\">\n	<img src=\"http://www.concrete5.org/files/8213/9402/6531/jl_editor_comment_icon.png\" width=\"97\" height=\"97\" style=\"float: left; margin-right: 10px; margin-bottom: 10px\" />\n	<h3>Editor Comment</h3>\n	<p>Enter comments that show only in edit mode</p>\n	</div>\n	\n	<a href=\"javascript:void(0)\" onclick=\"ccm_getMarketplaceItemDetails(1660)\" class=\"btn\">Learn More</a>\n',1394450001)
 ,(106,1,12,'Secondary 5','<div>\n<p><img src=\"http://newsflow.concrete5.org/files/1013/2691/4819/TotallyRandom_Small1.png\" alt=\"TotallyRandom_Small1.png\" width=\"186\" height=\"57\" /></p>\r\n<h3>March 7 Video Show</h3>\r\n<p><span>Check in with the Core Team for all the latest concrete5 news and hear all about a bunch of new marketplace add-ons and themes.</span></p>\n<div id=\"youtube4655\" class=\"youtubeBlock\" style=\"display: none\">\n\n	<iframe class=\"youtube-player\" type=\"text/html\" width=\"425\" height=\"344\" src=\"http://www.youtube.com/embed/Ij_aGuxH2CY\" frameborder=\"0\"></iframe>\n</div>\n\n<a href=\"javascript:void(0)\" class=\"primary btn\" onclick=\"$(\'#youtube4655\').dialog({modal: true, width: \'453\', height: \'419\', title: \'Totally Random 3/7/2014\'})\">► Watch Video</a>\n</div>\n\n	<div class=\"newsflow-paging-next\"><a href=\"javascript:void(0)\" onclick=\"ccm_showNewsflowOffsite(314)\"><span></span></a></div>\n\n	<script type=\"text/javascript\">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n',1394450002);

DROP TABLE IF EXISTS CollectionVersionBlockStyles;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionBlockStyles VALUES(1,20,57,'col1',3)
 ,(1,20,58,'col2',2)
 ,(1,20,59,'col3',4)
 ,(1,21,57,'col1',3)
 ,(1,21,58,'col2',2)
 ,(1,21,59,'col3',4)
 ,(1,22,57,'col1',3)
 ,(1,22,58,'col2',2)
 ,(1,22,59,'col3',4)
 ,(1,22,62,'contenu',9)
 ,(1,23,57,'col1',3)
 ,(1,23,58,'col2',2)
 ,(1,23,59,'col3',4)
 ,(1,23,62,'contenu',10)
 ,(1,24,57,'col1',3)
 ,(1,24,58,'col2',2)
 ,(1,24,59,'col3',4)
 ,(1,24,63,'contenu',11)
 ,(1,25,57,'col1',3)
 ,(1,25,58,'col2',2)
 ,(1,25,59,'col3',4)
 ,(1,25,63,'contenu',12)
 ,(1,26,57,'col1',3)
 ,(1,26,58,'col2',2)
 ,(1,26,59,'col3',4)
 ,(1,26,64,'contenu',13)
 ,(1,27,57,'col1',3)
 ,(1,27,58,'col2',2)
 ,(1,27,59,'col3',4)
 ,(1,28,57,'col1',3)
 ,(1,28,58,'col2',2)
 ,(1,28,59,'col3',4)
 ,(1,29,57,'col1',3)
 ,(1,29,58,'col2',2)
 ,(1,29,59,'col3',4)
 ,(1,29,76,'contenu',14)
 ,(1,30,57,'col1',3)
 ,(1,30,58,'col2',2)
 ,(1,30,59,'col3',4)
 ,(1,30,77,'contenu',15)
 ,(1,31,77,'contenu',15)
 ,(1,31,78,'col1',3)
 ,(1,31,79,'col2',16)
 ,(1,31,80,'col3',17)
 ,(1,32,77,'contenu',15)
 ,(1,32,78,'col1',3)
 ,(1,32,79,'col2',16)
 ,(1,32,80,'col3',17)
 ,(1,33,77,'contenu',15)
 ,(1,33,78,'col1',3)
 ,(1,33,79,'col2',16)
 ,(1,33,80,'col3',17);

DROP TABLE IF EXISTS CollectionVersionRelatedEdits;

CREATE TABLE IF NOT EXISTS `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersions;

CREATE TABLE IF NOT EXISTS `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersions VALUES(1,1,'Home','home','','2014-01-21 13:14:03','2014-01-21 13:14:03','Initial Version',0,0,1,NULL,7,4,NULL)
 ,(1,2,'Home','home','','2014-01-21 13:14:03','2014-01-21 13:58:59','Version 2',0,0,1,1,7,4,NULL)
 ,(1,3,'Home','home','','2014-01-21 13:14:03','2014-01-21 14:31:20','Version 3',0,0,1,1,7,4,NULL)
 ,(1,4,'Home','home','','2014-01-21 13:14:03','2014-01-21 14:55:15','Version 4',0,0,1,1,7,4,NULL)
 ,(1,5,'Home','home','','2014-01-21 13:14:03','2014-02-18 14:39:58','Version 5',0,0,1,1,7,4,NULL)
 ,(1,6,'Home','home','','2014-01-21 13:14:03','2014-02-18 14:49:30','Version 6',0,0,1,1,7,4,NULL)
 ,(1,7,'Home','home','','2014-01-21 13:14:03','2014-03-10 09:20:19','Version 7',0,0,1,1,7,4,NULL)
 ,(1,8,'Home','home','','2014-01-21 13:14:03','2014-03-10 10:30:41','Version 8',0,0,1,1,7,4,NULL)
 ,(1,9,'Home','home','','2014-01-21 13:14:03','2014-03-10 10:32:49','Version 9',0,0,1,1,7,4,NULL)
 ,(1,10,'Home','home','','2014-01-21 13:14:03','2014-03-10 10:35:35','Version 10',0,0,1,1,7,4,NULL)
 ,(1,11,'Home','home','','2014-01-21 13:14:03','2014-03-10 11:28:52','Version 11',0,0,1,1,7,4,NULL)
 ,(1,12,'Home','home','','2014-01-21 13:14:03','2014-03-10 12:14:06','New Version 12',0,0,1,1,7,7,NULL)
 ,(1,13,'Home','home','','2014-01-21 13:14:03','2014-03-10 12:21:39','New Version 13',0,0,1,1,7,7,NULL)
 ,(1,14,'Home','home','','2014-01-21 13:14:03','2014-03-10 12:34:35','New Version 14',0,0,1,1,7,5,NULL)
 ,(1,15,'Home','home','','2014-01-21 13:14:03','2014-03-10 12:34:54','New Version 15',0,0,1,1,7,7,NULL)
 ,(1,16,'Home','home','','2014-01-21 13:14:03','2014-03-10 12:42:10','Version 16',0,0,1,1,7,8,NULL)
 ,(1,17,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:05:10','New Version 17',0,0,1,1,7,7,NULL)
 ,(1,18,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:05:56','New Version 18',0,0,1,1,7,8,NULL)
 ,(1,19,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:08:49','New Version 19',0,0,1,1,7,7,NULL)
 ,(1,20,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:20:18','Version 20',0,0,1,1,7,7,NULL)
 ,(1,21,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:35:00','Version 21',0,0,1,1,7,7,NULL)
 ,(1,22,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:35:44','Version 22',0,0,1,1,7,7,NULL)
 ,(1,23,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:46:32','Version 23',0,0,1,NULL,7,7,NULL)
 ,(1,24,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:47:11','Version 24',0,0,1,NULL,7,7,NULL)
 ,(1,25,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:48:51','Version 25',0,0,1,NULL,7,7,NULL)
 ,(1,26,'Home','home','','2014-01-21 13:14:03','2014-03-10 13:49:56','Version 26',0,0,1,1,7,7,NULL)
 ,(1,27,'Home','home','','2014-01-21 13:14:03','2014-03-10 17:38:31','Version 27',0,0,1,NULL,7,7,NULL)
 ,(1,28,'Home','home','','2014-01-21 13:14:03','2014-03-10 17:43:23','Version 28',0,0,1,NULL,7,7,NULL)
 ,(1,29,'Home','home','','2014-01-21 13:14:03','2014-03-10 17:44:42','Version 29',0,0,1,NULL,7,7,NULL)
 ,(1,30,'Home','home','','2014-01-21 13:14:03','2014-03-10 17:45:23','Version 30',0,0,1,NULL,7,7,NULL)
 ,(1,31,'Home','home','','2014-01-21 13:14:03','2014-03-10 17:47:07','Version 31',0,0,1,1,7,7,NULL)
 ,(1,32,'Home','home','Page d\'accueil di Site','2014-01-21 13:14:00','2014-03-10 18:23:38','New Version 32',0,0,1,1,7,7,NULL)
 ,(1,33,'Home','home','Page d\'accueil du Site','2014-01-21 13:14:00','2014-03-10 18:27:50','New Version 33',1,0,1,1,7,7,NULL)
 ,(2,1,'Dashboard','dashboard','','2014-01-21 13:14:32','2014-01-21 13:14:32','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(3,1,'Composer','composer','Write for your site.','2014-01-21 13:14:35','2014-01-21 13:14:35','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(4,1,'Write','write','','2014-01-21 13:14:36','2014-01-21 13:14:36','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(5,1,'Drafts','drafts','','2014-01-21 13:14:36','2014-01-21 13:14:36','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(6,1,'Sitemap','sitemap','Whole world at a glance.','2014-01-21 13:14:37','2014-01-21 13:14:37','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(7,1,'Full Sitemap','full','','2014-01-21 13:14:37','2014-01-21 13:14:37','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(8,1,'Flat View','explore','','2014-01-21 13:14:38','2014-01-21 13:14:38','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(9,1,'Page Search','search','','2014-01-21 13:14:38','2014-01-21 13:14:38','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(10,1,'Files','files','All documents and images.','2014-01-21 13:14:38','2014-01-21 13:14:38','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(11,1,'File Manager','search','','2014-01-21 13:14:39','2014-01-21 13:14:39','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(12,1,'Attributes','attributes','','2014-01-21 13:14:39','2014-01-21 13:14:39','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(13,1,'File Sets','sets','','2014-01-21 13:14:40','2014-01-21 13:14:40','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(14,1,'Add File Set','add_set','','2014-01-21 13:14:40','2014-01-21 13:14:40','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(15,1,'Members','users','Add and manage the user accounts and Groups on your website.','2014-01-21 13:14:41','2014-01-21 13:14:41','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(16,1,'Search Users','search','','2014-01-21 13:14:42','2014-01-21 13:14:42','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(17,1,'User Groups','groups','','2014-01-21 13:14:42','2014-01-21 13:14:42','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(18,1,'Attributes','attributes','','2014-01-21 13:14:43','2014-01-21 13:14:43','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(19,1,'Add User','add','','2014-01-21 13:14:43','2014-01-21 13:14:43','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(20,1,'Add Group','add_group','','2014-01-21 13:14:43','2014-01-21 13:14:43','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(21,1,'Group Sets','group_sets','','2014-01-21 13:14:44','2014-01-21 13:14:44','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(22,1,'Reports','reports','Get data from forms and logs.','2014-01-21 13:14:44','2014-01-21 13:14:44','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(23,1,'Statistics','statistics','View your site activity.','2014-01-21 13:14:45','2014-01-21 13:14:45','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(24,1,'Form Results','forms','Get submission data.','2014-01-21 13:14:45','2014-01-21 13:14:45','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(25,1,'Surveys','surveys','','2014-01-21 13:14:46','2014-01-21 13:14:46','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(26,1,'Logs','logs','','2014-01-21 13:14:46','2014-01-21 13:14:46','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(27,1,'Pages & Themes','pages','Reskin your site.','2014-01-21 13:14:46','2014-01-21 13:14:46','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(28,1,'Themes','themes','Reskin your site.','2014-01-21 13:14:47','2014-01-21 13:14:47','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(29,1,'Add','add','','2014-01-21 13:14:47','2014-01-21 13:14:47','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(30,1,'Inspect','inspect','','2014-01-21 13:14:47','2014-01-21 13:14:47','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(31,1,'Customize','customize','','2014-01-21 13:14:48','2014-01-21 13:14:48','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(32,1,'Page Types','types','What goes in your site.','2014-01-21 13:14:48','2014-01-21 13:14:48','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(33,1,'Add Page Type','add','Add page types to your site.','2014-01-21 13:14:49','2014-01-21 13:14:49','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(34,1,'Attributes','attributes','','2014-01-21 13:14:49','2014-01-21 13:14:49','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(35,1,'Single Pages','single','','2014-01-21 13:14:49','2014-01-21 13:14:49','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(36,1,'Workflow','workflow','','2014-01-21 13:14:50','2014-01-21 13:14:50','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(37,1,'Workflow List','list','','2014-01-21 13:14:50','2014-01-21 13:14:50','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(38,1,'Waiting for Me','me','','2014-01-21 13:14:50','2014-01-21 13:14:50','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2014-01-21 13:14:51','2014-01-21 13:14:51','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(40,1,'Stacks','stacks','Share content across your site.','2014-01-21 13:14:52','2014-01-21 13:14:52','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(41,1,'Block & Stack Permissions','permissions','Control who can add Blocks and Stacks on your site.','2014-01-21 13:14:52','2014-01-21 13:14:52','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(42,1,'Stack List','list','','2014-01-21 13:14:52','2014-01-21 13:14:52','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(43,1,'Block Types','types','Manage the installed block types in your site.','2014-01-21 13:14:53','2014-01-21 13:14:53','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2014-01-21 13:14:54','2014-01-21 13:14:54','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(45,1,'Dashboard','news','','2014-01-21 13:14:54','2014-01-21 13:14:54','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(46,1,'Add Functionality','install','Install add-ons & themes.','2014-01-21 13:14:55','2014-01-21 13:14:55','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(47,1,'Update Add-Ons','update','Update your installed packages.','2014-01-21 13:14:55','2014-01-21 13:14:55','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2014-01-21 13:14:55','2014-01-21 13:14:55','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2014-01-21 13:14:56','2014-01-21 13:14:56','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2014-01-21 13:14:56','2014-01-21 13:14:56','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(51,1,'System & Settings','system','Secure and setup your site.','2014-01-21 13:14:57','2014-01-21 13:14:57','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(52,1,'Basics','basics','Basic information about your website.','2014-01-21 13:14:57','2014-01-21 13:14:57','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(53,1,'Site Name','site_name','','2014-01-21 13:14:57','2014-01-21 13:14:57','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2014-01-21 13:14:58','2014-01-21 13:14:58','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(55,1,'Rich Text Editor','editor','','2014-01-21 13:14:58','2014-01-21 13:14:58','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(56,1,'Languages','multilingual','','2014-01-21 13:14:58','2014-01-21 13:14:58','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(57,1,'Time Zone','timezone','','2014-01-21 13:14:59','2014-01-21 13:14:59','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(58,1,'Interface Preferences','interface','','2014-01-21 13:14:59','2014-01-21 13:14:59','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2014-01-21 13:15:00','2014-01-21 13:15:00','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(60,1,'Pretty URLs','urls','','2014-01-21 13:15:00','2014-01-21 13:15:00','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(61,1,'Bulk SEO Updater','bulk_seo_tool','','2014-01-21 13:15:00','2014-01-21 13:15:00','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(62,1,'Tracking Codes','tracking_codes','','2014-01-21 13:15:01','2014-01-21 13:15:01','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(63,1,'Excluded URL Word List','excluded','','2014-01-21 13:15:01','2014-01-21 13:15:01','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(64,1,'Statistics','statistics','','2014-01-21 13:15:01','2014-01-21 13:15:01','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(65,1,'Search Index','search_index','','2014-01-21 13:15:02','2014-01-21 13:15:02','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(66,1,'Optimization','optimization','Keep your site running well.','2014-01-21 13:15:02','2014-01-21 13:15:02','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(67,1,'Cache & Speed Settings','cache','','2014-01-21 13:15:03','2014-01-21 13:15:03','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(68,1,'Clear Cache','clear_cache','','2014-01-21 13:15:03','2014-01-21 13:15:03','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(69,1,'Automated Jobs','jobs','','2014-01-21 13:15:04','2014-01-21 13:15:04','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(70,1,'Permissions & Access','permissions','Control who sees and edits your site.','2014-01-21 13:15:04','2014-01-21 13:15:04','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(71,1,'Site Access','site','','2014-01-21 13:15:04','2014-01-21 13:15:04','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(72,1,'File Manager Permissions','files','','2014-01-21 13:15:04','2014-01-21 13:15:04','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(73,1,'Allowed File Types','file_types','','2014-01-21 13:15:05','2014-01-21 13:15:05','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(74,1,'Task Permissions','tasks','','2014-01-21 13:15:05','2014-01-21 13:15:05','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(75,1,'User Permissions','users','','2014-01-21 13:15:06','2014-01-21 13:15:06','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(76,1,'Advanced Permissions','advanced','','2014-01-21 13:15:06','2014-01-21 13:15:06','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(77,1,'IP Blacklist','ip_blacklist','','2014-01-21 13:15:07','2014-01-21 13:15:07','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(78,1,'Captcha Setup','captcha','','2014-01-21 13:15:08','2014-01-21 13:15:08','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(79,1,'Spam Control','antispam','','2014-01-21 13:15:08','2014-01-21 13:15:08','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(80,1,'Maintenance Mode','maintenance_mode','','2014-01-21 13:15:09','2014-01-21 13:15:09','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(81,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2014-01-21 13:15:09','2014-01-21 13:15:09','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(82,1,'Login Destination','postlogin','','2014-01-21 13:15:09','2014-01-21 13:15:09','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(83,1,'Public Profiles','profiles','','2014-01-21 13:15:10','2014-01-21 13:15:10','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(84,1,'Public Registration','public_registration','','2014-01-21 13:15:10','2014-01-21 13:15:10','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(85,1,'Email','mail','Control how your site send and processes mail.','2014-01-21 13:15:11','2014-01-21 13:15:11','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(86,1,'SMTP Method','method','','2014-01-21 13:15:11','2014-01-21 13:15:11','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(87,1,'Email Importers','importers','','2014-01-21 13:15:12','2014-01-21 13:15:12','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(88,1,'Attributes','attributes','Setup attributes for pages, users, Files and more.','2014-01-21 13:15:12','2014-01-21 13:15:12','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(89,1,'Sets','sets','Group attributes into sets for easier organization','2014-01-21 13:15:13','2014-01-21 13:15:13','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(90,1,'Types','types','Choose which attribute types are available for different items.','2014-01-21 13:15:13','2014-01-21 13:15:13','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(91,1,'Environment','environment','Advanced settings for web developers.','2014-01-21 13:15:13','2014-01-21 13:15:13','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(92,1,'Environment Information','info','','2014-01-21 13:15:14','2014-01-21 13:15:14','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(93,1,'Debug Settings','debug','','2014-01-21 13:15:14','2014-01-21 13:15:14','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(94,1,'Logging Settings','logging','','2014-01-21 13:15:15','2014-01-21 13:15:15','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(95,1,'File Storage Locations','file_storage_locations','','2014-01-21 13:15:15','2014-01-21 13:15:15','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(96,1,'Proxy Server','proxy','','2014-01-21 13:15:16','2014-01-21 13:15:16','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(97,1,'Backup & Restore','backup_restore','Backup or restore your website.','2014-01-21 13:15:17','2014-01-21 13:15:17','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(98,1,'Backup Database','backup','','2014-01-21 13:15:17','2014-01-21 13:15:17','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(99,1,'Update concrete5','update','','2014-01-21 13:15:17','2014-01-21 13:15:17','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(100,1,'Database XML','database','','2014-01-21 13:15:18','2014-01-21 13:15:18','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(101,1,'Composer','composer','','2014-01-21 13:15:18','2014-01-21 13:15:18','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(102,1,'',NULL,NULL,'2014-01-21 13:15:18','2014-01-21 13:15:18','Initial Version',1,0,NULL,NULL,0,1,NULL)
 ,(103,1,'',NULL,NULL,'2014-01-21 13:15:18','2014-01-21 13:15:18','Initial Version',1,0,NULL,NULL,0,2,NULL)
 ,(104,1,'',NULL,NULL,'2014-01-21 13:15:19','2014-01-21 13:15:19','Initial Version',1,0,NULL,NULL,0,3,NULL)
 ,(105,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2014-01-21 13:15:19','2014-01-21 13:15:19','Initial Version',1,0,1,NULL,7,3,NULL)
 ,(106,1,'Customize Dashboard Home','home','','2014-01-21 13:15:19','2014-01-21 13:15:19','Initial Version',1,0,1,NULL,7,2,NULL)
 ,(107,1,'Drafts','!drafts','','2014-01-21 13:15:38','2014-01-21 13:15:38','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(108,1,'Trash','!trash','','2014-01-21 13:15:39','2014-01-21 13:15:39','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(109,1,'Stacks','!stacks','','2014-01-21 13:15:39','2014-01-21 13:15:39','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(110,1,'Login','login','','2014-01-21 13:15:39','2014-01-21 13:15:39','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(111,1,'Register','register','','2014-01-21 13:15:40','2014-01-21 13:15:40','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(112,1,'Profile','profile','','2014-01-21 13:15:41','2014-01-21 13:15:41','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(113,1,'Edit','edit','','2014-01-21 13:15:42','2014-01-21 13:15:42','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(114,1,'Avatar','avatar','','2014-01-21 13:15:42','2014-01-21 13:15:42','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(115,1,'Messages','messages','','2014-01-21 13:15:43','2014-01-21 13:15:43','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(116,1,'Friends','friends','','2014-01-21 13:15:43','2014-01-21 13:15:43','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(117,1,'Page Not Found','page_not_found','','2014-01-21 13:15:44','2014-01-21 13:15:44','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(118,1,'Page Forbidden','page_forbidden','','2014-01-21 13:15:44','2014-01-21 13:15:44','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(119,1,'Download File','download_file','','2014-01-21 13:15:45','2014-01-21 13:15:45','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(120,1,'Members','members','','2014-01-21 13:15:45','2014-01-21 13:15:45','Initial Version',1,0,1,NULL,7,0,NULL)
 ,(121,1,'',NULL,NULL,'2014-01-21 13:15:47','2014-01-21 13:15:47','Initial Version',1,0,NULL,NULL,0,4,NULL)
 ,(122,1,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-01-21 15:12:06','Initial Version',0,0,1,1,7,4,NULL)
 ,(122,2,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-01-27 12:35:36','New Version 2',0,0,1,1,7,8,NULL)
 ,(122,3,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 12:37:48','New Version 3',0,0,1,1,7,7,NULL)
 ,(122,4,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 12:42:42','New Version 4',0,0,1,1,7,7,NULL)
 ,(122,5,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 12:49:38','New Version 5',0,0,1,1,7,9,NULL)
 ,(122,6,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 12:50:46','New Version 6',0,0,1,1,7,7,NULL)
 ,(122,7,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 12:58:30','New Version 7',0,0,1,1,7,7,NULL)
 ,(122,8,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 13:09:49','New Version 8',0,0,1,1,7,8,NULL)
 ,(122,9,'Produits','presentation','Ma presentation','2014-01-21 15:11:00','2014-03-10 14:18:05','New Version 9',0,0,1,1,7,8,NULL)
 ,(122,10,'Produits','presentation','Page de produits','2014-01-21 15:11:00','2014-03-10 14:18:22','Version 10',0,0,1,1,7,8,NULL)
 ,(122,11,'Produits','presentation','Page de produits','2014-01-21 15:11:00','2014-03-10 14:26:08','Version 11',0,0,1,1,7,8,NULL)
 ,(122,12,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 17:22:24','New Version 12',0,0,1,1,7,8,NULL)
 ,(122,13,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 17:29:27','Version 13',0,0,1,1,7,8,NULL)
 ,(122,14,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 17:53:03','Version 14',0,0,1,1,7,8,NULL)
 ,(122,15,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 17:56:22','Version 15',0,0,1,1,7,8,NULL)
 ,(122,16,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 17:57:18','Version 16',0,0,1,1,7,8,NULL)
 ,(122,17,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 17:59:21','Version 17',0,0,1,NULL,7,8,NULL)
 ,(122,18,'Produits','produits','Page de produits','2014-01-21 15:11:00','2014-03-10 18:02:30','Version 18',1,0,1,1,7,8,NULL)
 ,(123,1,'Plan','plan','Le plan','2014-01-21 15:12:00','2014-01-21 15:12:23','Initial Version',0,0,1,1,7,4,NULL)
 ,(123,2,'Plan','plan','Le plan','2014-01-21 15:12:00','2014-03-10 13:06:20','New Version 2',0,0,1,1,7,7,NULL)
 ,(123,3,'Plan','plan','Le plan','2014-01-21 15:12:00','2014-03-10 13:09:11','New Version 3',0,0,1,1,7,8,NULL)
 ,(123,4,'Plan','plan','Le plan','2014-01-21 15:12:00','2014-03-10 14:34:41','Version 4',0,0,1,1,7,8,NULL)
 ,(123,5,'Plan','plan','Le plan','2014-01-21 15:12:00','2014-03-10 14:42:24','Version 5',0,0,1,1,7,8,NULL)
 ,(123,6,'Plan','plan','Le plan','2014-01-21 15:12:00','2014-03-10 14:44:33','Version 6',1,0,1,1,7,8,NULL)
 ,(124,1,'Contact','contact','Page de contact','2014-01-21 15:12:00','2014-01-21 15:13:10','Initial Version',0,0,1,1,7,4,NULL)
 ,(124,2,'Contact','contact','Page de contact','2014-01-21 15:12:00','2014-03-10 17:24:24','Version 2',1,0,1,1,7,4,NULL)
 ,(125,1,'Presentation','presentation','Ma presentation','2014-01-21 15:11:00','2014-01-27 12:36:46','Initial Version',1,0,1,NULL,7,4,NULL)
 ,(125,2,'Presentation 2','presentation-2','Ma presentation','2014-01-21 15:11:00','2014-01-27 12:36:47','New Version 2',0,0,1,NULL,7,4,NULL)
 ,(126,1,'',NULL,NULL,'2014-02-18 14:09:42','2014-02-18 14:09:42','Initial Version',1,0,NULL,NULL,0,5,NULL)
 ,(127,1,'',NULL,NULL,'2014-02-18 14:09:45','2014-02-18 14:09:45','Initial Version',1,0,NULL,NULL,0,6,NULL)
 ,(128,1,'',NULL,NULL,'2014-03-10 12:17:44','2014-03-10 12:17:44','Initial Version',1,0,NULL,NULL,0,7,NULL)
 ,(129,1,'',NULL,NULL,'2014-03-10 12:18:01','2014-03-10 12:18:01','Initial Version',1,0,NULL,NULL,0,8,NULL)
 ,(130,1,'',NULL,NULL,'2014-03-10 12:48:15','2014-03-10 12:48:15','Initial Version',1,0,NULL,NULL,0,9,NULL)
 ,(131,1,'',NULL,NULL,'2014-03-10 12:48:15','2014-03-10 12:48:15','Initial Version',1,0,NULL,NULL,0,10,NULL)
 ,(132,1,'Blog','blog','Notre blog','2014-03-10 14:46:00','2014-03-10 14:46:17','Initial Version',0,0,1,1,7,8,NULL)
 ,(132,2,'Blog','blog','Notre blog','2014-03-10 14:46:00','2014-03-10 14:47:21','Version 2',0,0,1,1,7,8,NULL)
 ,(132,3,'Blog','blog','Notre blog','2014-03-10 14:46:00','2014-03-10 14:48:39','Version 3',0,0,1,1,7,8,NULL)
 ,(132,4,'Blog','blog','Notre blog','2014-03-10 14:46:00','2014-03-10 18:03:43','Version 4',1,0,1,1,7,8,NULL)
 ,(133,1,'Database Migration','db_migration',NULL,'2014-03-10 19:30:17','2014-03-10 19:30:17','Initial Version',1,0,1,NULL,7,0,NULL);

DROP TABLE IF EXISTS ComposerContentLayout;

CREATE TABLE IF NOT EXISTS `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ComposerDrafts;

CREATE TABLE IF NOT EXISTS `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ComposerTypes;

CREATE TABLE IF NOT EXISTS `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Config;

CREATE TABLE IF NOT EXISTS `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Config VALUES('ACCESS_ENTITY_UPDATED','2014-03-10 13:19:48','1394457588',0,0)
 ,('ANTISPAM_LOG_SPAM','2014-01-21 13:15:46','1',0,0)
 ,('APP_VERSION_LATEST','2014-03-10 17:18:07','5.6.2.1',0,0)
 ,('DO_PAGE_REINDEX_CHECK','2014-03-10 18:27:57','0',0,0)
 ,('ENABLE_BLOCK_CACHE','2014-03-10 13:07:53','0',0,0)
 ,('ENABLE_LOG_EMAILS','2014-01-21 13:15:46','1',0,0)
 ,('ENABLE_LOG_ERRORS','2014-01-21 13:15:46','1',0,0)
 ,('ENABLE_MARKETPLACE_SUPPORT','2014-01-21 13:15:46','1',0,0)
 ,('ENABLE_OVERRIDE_CACHE','2014-03-10 13:07:53','0',0,0)
 ,('FULL_PAGE_CACHE_GLOBAL','2014-03-10 13:07:53','0',0,0)
 ,('FULL_PAGE_CACHE_LIFETIME','2014-03-10 13:07:53','default',0,0)
 ,('FULL_PAGE_CACHE_LIFETIME_CUSTOM','2014-03-10 13:07:53',NULL,0,0)
 ,('MARKETPLACE_SITE_TOKEN','2014-03-10 14:36:35','mVITh7MZymow6uZlRBBxqVF7R3ovU3sGov7UmlbXOTrp5c7WZVPEcl8k6ncy6I0v',0,0)
 ,('MARKETPLACE_SITE_URL_TOKEN','2014-03-10 14:36:36','f9n3dvt4lqk6tzf00ph3msrc',0,0)
 ,('NEWSFLOW_LAST_VIEWED','2014-03-10 10:13:17','1394442797',1,0)
 ,('QUICK_NAV_BOOKMARKS','2014-01-21 15:37:48','O:21:\"ConcreteDashboardMenu\":1:{s:8:\"\0*\0items\";a:8:{i:0;s:25:\"/dashboard/composer/write\";i:1;s:26:\"/dashboard/composer/drafts\";i:3;s:25:\"/dashboard/sitemap/search\";i:4;s:23:\"/dashboard/files/search\";i:5;s:21:\"/dashboard/files/sets\";i:6;s:29:\"/dashboard/reports/statistics\";i:7;s:24:\"/dashboard/reports/forms\";i:8;s:23:\"/dashboard/sitemap/full\";}}',1,0)
 ,('SEEN_INTRODUCTION','2014-01-21 13:16:05','1',0,0)
 ,('SITE','2014-01-21 13:15:49','RSC-Concrete5',0,0)
 ,('SITE_APP_VERSION','2014-01-21 13:15:49','5.6.2.1',0,0)
 ,('SITE_DEBUG_LEVEL','2014-01-21 13:15:46','1',0,0)
 ,('SITE_INSTALLED_APP_VERSION','2014-01-21 13:15:49','5.6.2.1',0,0);

DROP TABLE IF EXISTS CustomStylePresets;

CREATE TABLE IF NOT EXISTS `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CustomStyleRules;

CREATE TABLE IF NOT EXISTS `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO CustomStyleRules VALUES(1,'','image-col','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(2,'','image-col','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(3,'','image-col','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(4,'','image-col','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(5,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(6,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','border-radius:5px;')
 ,(7,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','border-radius:5px;')
 ,(8,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','border-radius:5px;')
 ,(9,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','border-radius:5px;')
 ,(10,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','border-radius:5px;')
 ,(11,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','border-radius:5px;')
 ,(12,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','margin-top:20px;')
 ,(13,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(14,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(15,'','logo','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','padding-top:20px;')
 ,(16,'','image-col','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','')
 ,(17,'','image-col','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','');

DROP TABLE IF EXISTS DownloadStatistics;

CREATE TABLE IF NOT EXISTS `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileAttributeValues;

CREATE TABLE IF NOT EXISTS `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO FileAttributeValues VALUES(4,1,12,126)
 ,(4,1,13,127)
 ,(5,1,12,128)
 ,(5,1,13,129)
 ,(6,1,12,130)
 ,(6,1,13,131)
 ,(7,1,12,132)
 ,(7,1,13,133);

DROP TABLE IF EXISTS FilePermissionAssignments;

CREATE TABLE IF NOT EXISTS `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FilePermissionFileTypes;

CREATE TABLE IF NOT EXISTS `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Files;

CREATE TABLE IF NOT EXISTS `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO Files VALUES(4,'2014-03-10 17:42:23',1,0,0,0,NULL)
 ,(5,'2014-03-10 17:43:06',1,0,0,0,NULL)
 ,(6,'2014-03-10 17:47:31',1,0,0,0,NULL)
 ,(7,'2014-03-10 17:53:21',1,0,122,0,NULL);

DROP TABLE IF EXISTS FileSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO FileSearchIndexAttributes VALUES(4,940.0000,341.0000,0.0000)
 ,(5,940.0000,341.0000,0.0000)
 ,(6,285.0000,178.0000,0.0000)
 ,(7,48.0000,47.0000,0.0000);

DROP TABLE IF EXISTS FileSetFiles;

CREATE TABLE IF NOT EXISTS `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetPermissionAssignments;

CREATE TABLE IF NOT EXISTS `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO FileSetPermissionAssignments VALUES(0,43,35)
 ,(0,44,36)
 ,(0,45,37)
 ,(0,46,38)
 ,(0,47,39)
 ,(0,48,40)
 ,(0,49,42)
 ,(0,50,41)
 ,(0,51,43);

DROP TABLE IF EXISTS FileSetPermissionFileTypeAccessList;

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetPermissionFileTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSets;

CREATE TABLE IF NOT EXISTS `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetSavedSearches;

CREATE TABLE IF NOT EXISTS `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileStorageLocations;

CREATE TABLE IF NOT EXISTS `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileVersionLog;

CREATE TABLE IF NOT EXISTS `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO FileVersionLog VALUES(7,4,1,5,12)
 ,(8,4,1,5,13)
 ,(9,5,1,5,12)
 ,(10,5,1,5,13)
 ,(11,6,1,5,12)
 ,(12,6,1,5,13)
 ,(13,7,1,5,12)
 ,(14,7,1,5,13);

DROP TABLE IF EXISTS FileVersions;

CREATE TABLE IF NOT EXISTS `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO FileVersions VALUES(6,1,'imagecol1.jpg','941394473651',1,48126,'imagecol1.jpg','','',1,'2014-03-10 17:47:32',1,1,'2014-03-10 17:47:32',1,1,0,'jpg',1)
 ,(4,1,'image1.jpg','551394473343',1,101125,'image1.jpg','','',1,'2014-03-10 17:42:23',1,1,'2014-03-10 17:42:23',1,1,0,'jpg',1)
 ,(5,1,'image2.jpg','401394473386',1,100473,'image2.jpg','','',1,'2014-03-10 17:43:06',1,1,'2014-03-10 17:43:06',1,1,0,'jpg',1)
 ,(7,1,'image-news.jpg','381394474001',1,31001,'image-news.jpg','','',1,'2014-03-10 17:53:22',1,1,'2014-03-10 17:53:22',1,1,0,'jpg',1);

DROP TABLE IF EXISTS Groups;

CREATE TABLE IF NOT EXISTS `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO Groups VALUES(1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL)
 ,(2,'Registered Users','The registered Users group represents all user accounts.',0,NULL,NULL,0,NULL)
 ,(3,'Administrators','',0,NULL,NULL,0,NULL);

DROP TABLE IF EXISTS GroupSetGroups;

CREATE TABLE IF NOT EXISTS `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS GroupSets;

CREATE TABLE IF NOT EXISTS `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Jobs;

CREATE TABLE IF NOT EXISTS `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO Jobs VALUES(1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes Pages that have changed since last indexing.','2014-01-21 13:14:31',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0)
 ,(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2014-01-21 13:14:31',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0)
 ,(3,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2014-01-21 13:14:31',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0)
 ,(4,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2014-01-21 13:14:31',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0)
 ,(5,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2014-01-21 13:14:31',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0);

DROP TABLE IF EXISTS JobSetJobs;

CREATE TABLE IF NOT EXISTS `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO JobSetJobs VALUES(1,1,0)
 ,(1,3,0)
 ,(1,4,0)
 ,(1,5,0);

DROP TABLE IF EXISTS JobSets;

CREATE TABLE IF NOT EXISTS `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO JobSets VALUES(1,'Default',0,NULL,0,'days',0);

DROP TABLE IF EXISTS JobsLog;

CREATE TABLE IF NOT EXISTS `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS LayoutPresets;

CREATE TABLE IF NOT EXISTS `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Layouts;

CREATE TABLE IF NOT EXISTS `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO Layouts VALUES(1,1,2,0,'50%',0)
 ,(2,3,2,0,'13%',0);

DROP TABLE IF EXISTS Logs;

CREATE TABLE IF NOT EXISTS `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Logs VALUES(1,'Page Action','2014-03-10 14:10:49','Page &quot;Presentation 2&quot; at path &quot;/presentation1&quot; Moved to trash\n',1,0);

DROP TABLE IF EXISTS MailImporters;

CREATE TABLE IF NOT EXISTS `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO MailImporters VALUES(1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');

DROP TABLE IF EXISTS MailValidationHashes;

CREATE TABLE IF NOT EXISTS `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Packages;

CREATE TABLE IF NOT EXISTS `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Packages VALUES(1,'Database Case Sensitivity Migration','db_case_sensitivity','Fixes the database table names to case sensitive.','2014-03-10 19:30:17',1,'1.1.2',NULL);

DROP TABLE IF EXISTS PagePaths;

CREATE TABLE IF NOT EXISTS `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

INSERT INTO PagePaths VALUES(1,2,'/dashboard','1')
 ,(2,3,'/dashboard/composer','1')
 ,(3,4,'/dashboard/composer/write','1')
 ,(4,5,'/dashboard/composer/drafts','1')
 ,(5,6,'/dashboard/sitemap','1')
 ,(6,7,'/dashboard/sitemap/full','1')
 ,(7,8,'/dashboard/sitemap/explore','1')
 ,(8,9,'/dashboard/sitemap/search','1')
 ,(9,10,'/dashboard/files','1')
 ,(10,11,'/dashboard/files/search','1')
 ,(11,12,'/dashboard/files/attributes','1')
 ,(12,13,'/dashboard/files/sets','1')
 ,(13,14,'/dashboard/files/add_set','1')
 ,(14,15,'/dashboard/users','1')
 ,(15,16,'/dashboard/users/search','1')
 ,(16,17,'/dashboard/users/groups','1')
 ,(17,18,'/dashboard/users/attributes','1')
 ,(18,19,'/dashboard/users/add','1')
 ,(19,20,'/dashboard/users/add_group','1')
 ,(20,21,'/dashboard/users/group_sets','1')
 ,(21,22,'/dashboard/reports','1')
 ,(22,23,'/dashboard/reports/statistics','1')
 ,(23,24,'/dashboard/reports/forms','1')
 ,(24,25,'/dashboard/reports/surveys','1')
 ,(25,26,'/dashboard/reports/logs','1')
 ,(26,27,'/dashboard/pages','1')
 ,(27,28,'/dashboard/pages/themes','1')
 ,(28,29,'/dashboard/pages/themes/add','1')
 ,(29,30,'/dashboard/pages/themes/inspect','1')
 ,(30,31,'/dashboard/pages/themes/customize','1')
 ,(31,32,'/dashboard/pages/types','1')
 ,(32,33,'/dashboard/pages/types/add','1')
 ,(33,34,'/dashboard/pages/attributes','1')
 ,(34,35,'/dashboard/pages/single','1')
 ,(35,36,'/dashboard/workflow','1')
 ,(36,37,'/dashboard/workflow/list','1')
 ,(37,38,'/dashboard/workflow/me','1')
 ,(38,39,'/dashboard/blocks','1')
 ,(39,40,'/dashboard/blocks/stacks','1')
 ,(40,41,'/dashboard/blocks/permissions','1')
 ,(41,42,'/dashboard/blocks/stacks/list','1')
 ,(42,43,'/dashboard/blocks/types','1')
 ,(43,44,'/dashboard/extend','1')
 ,(44,45,'/dashboard/news','1')
 ,(45,46,'/dashboard/extend/install','1')
 ,(46,47,'/dashboard/extend/update','1')
 ,(47,48,'/dashboard/extend/connect','1')
 ,(48,49,'/dashboard/extend/themes','1')
 ,(49,50,'/dashboard/extend/add-ons','1')
 ,(50,51,'/dashboard/system','1')
 ,(51,52,'/dashboard/system/basics','1')
 ,(52,53,'/dashboard/system/basics/site_name','1')
 ,(53,54,'/dashboard/system/basics/icons','1')
 ,(54,55,'/dashboard/system/basics/editor','1')
 ,(55,56,'/dashboard/system/basics/multilingual','1')
 ,(56,57,'/dashboard/system/basics/timezone','1')
 ,(57,58,'/dashboard/system/basics/interface','1')
 ,(58,59,'/dashboard/system/seo','1')
 ,(59,60,'/dashboard/system/seo/urls','1')
 ,(60,61,'/dashboard/system/seo/bulk_seo_tool','1')
 ,(61,62,'/dashboard/system/seo/tracking_codes','1')
 ,(62,63,'/dashboard/system/seo/excluded','1')
 ,(63,64,'/dashboard/system/seo/statistics','1')
 ,(64,65,'/dashboard/system/seo/search_index','1')
 ,(65,66,'/dashboard/system/optimization','1')
 ,(66,67,'/dashboard/system/optimization/cache','1')
 ,(67,68,'/dashboard/system/optimization/clear_cache','1')
 ,(68,69,'/dashboard/system/optimization/jobs','1')
 ,(69,70,'/dashboard/system/permissions','1')
 ,(70,71,'/dashboard/system/permissions/site','1')
 ,(71,72,'/dashboard/system/permissions/files','1')
 ,(72,73,'/dashboard/system/permissions/file_types','1')
 ,(73,74,'/dashboard/system/permissions/tasks','1')
 ,(74,75,'/dashboard/system/permissions/users','1')
 ,(75,76,'/dashboard/system/permissions/advanced','1')
 ,(76,77,'/dashboard/system/permissions/ip_blacklist','1')
 ,(77,78,'/dashboard/system/permissions/captcha','1')
 ,(78,79,'/dashboard/system/permissions/antispam','1')
 ,(79,80,'/dashboard/system/permissions/maintenance_mode','1')
 ,(80,81,'/dashboard/system/registration','1')
 ,(81,82,'/dashboard/system/registration/postlogin','1')
 ,(82,83,'/dashboard/system/registration/profiles','1')
 ,(83,84,'/dashboard/system/registration/public_registration','1')
 ,(84,85,'/dashboard/system/mail','1')
 ,(85,86,'/dashboard/system/mail/method','1')
 ,(86,87,'/dashboard/system/mail/importers','1')
 ,(87,88,'/dashboard/system/attributes','1')
 ,(88,89,'/dashboard/system/attributes/sets','1')
 ,(89,90,'/dashboard/system/attributes/types','1')
 ,(90,91,'/dashboard/system/environment','1')
 ,(91,92,'/dashboard/system/environment/info','1')
 ,(92,93,'/dashboard/system/environment/debug','1')
 ,(93,94,'/dashboard/system/environment/logging','1')
 ,(94,95,'/dashboard/system/environment/file_storage_locations','1')
 ,(95,96,'/dashboard/system/environment/proxy','1')
 ,(96,97,'/dashboard/system/backup_restore','1')
 ,(97,98,'/dashboard/system/backup_restore/backup','1')
 ,(98,99,'/dashboard/system/backup_restore/update','1')
 ,(99,100,'/dashboard/system/backup_restore/database','1')
 ,(100,101,'/dashboard/pages/types/composer','1')
 ,(101,105,'/dashboard/welcome','1')
 ,(102,106,'/dashboard/home','1')
 ,(103,107,'/!drafts','1')
 ,(104,108,'/!trash','1')
 ,(105,109,'/!stacks','1')
 ,(106,110,'/login','1')
 ,(107,111,'/register','1')
 ,(108,112,'/profile','1')
 ,(109,113,'/profile/edit','1')
 ,(110,114,'/profile/avatar','1')
 ,(111,115,'/profile/messages','1')
 ,(112,116,'/profile/friends','1')
 ,(113,117,'/page_not_found','1')
 ,(114,118,'/page_forbidden','1')
 ,(115,119,'/download_file','1')
 ,(116,120,'/members','1')
 ,(130,125,'/!trash/presentation','1')
 ,(136,123,'/plan','1')
 ,(140,122,'/presentation','0')
 ,(142,124,'/contact','1')
 ,(147,122,'/produits','1')
 ,(148,132,'/blog','1')
 ,(149,133,'/dashboard/system/backup_restore/db_migration','1');

DROP TABLE IF EXISTS PagePermissionAssignments;

CREATE TABLE IF NOT EXISTS `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PagePermissionAssignments VALUES(1,1,52)
 ,(1,2,53)
 ,(1,3,54)
 ,(1,4,55)
 ,(1,5,56)
 ,(1,6,57)
 ,(1,7,58)
 ,(1,8,59)
 ,(1,9,60)
 ,(1,10,61)
 ,(1,11,62)
 ,(1,12,63)
 ,(1,13,64)
 ,(1,14,65)
 ,(1,15,66)
 ,(1,16,67)
 ,(2,1,18)
 ,(2,2,20)
 ,(2,3,19)
 ,(2,4,25)
 ,(2,5,21)
 ,(2,6,22)
 ,(2,7,27)
 ,(2,8,29)
 ,(2,9,31)
 ,(2,10,28)
 ,(2,11,32)
 ,(2,12,33)
 ,(2,13,23)
 ,(2,14,26)
 ,(2,15,24)
 ,(2,16,30)
 ,(42,1,34)
 ,(42,3,35)
 ,(110,1,38)
 ,(110,3,39)
 ,(111,1,40)
 ,(111,3,41);

DROP TABLE IF EXISTS PagePermissionPageTypeAccessList;

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionPageTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionPropertyAccessList;

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionPropertyAttributeAccessListCustom;

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionThemeAccessList;

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionThemeAccessListCustom;

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Pages;

CREATE TABLE IF NOT EXISTS `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Pages VALUES(1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,15,0,0,0,-1,'0',0,0)
 ,(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1)
 ,(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1)
 ,(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1)
 ,(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1)
 ,(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1)
 ,(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1)
 ,(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1)
 ,(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1)
 ,(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1)
 ,(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1)
 ,(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1)
 ,(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1)
 ,(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1)
 ,(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1)
 ,(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1)
 ,(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1)
 ,(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1)
 ,(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1)
 ,(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1)
 ,(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1)
 ,(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1)
 ,(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1)
 ,(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1)
 ,(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1)
 ,(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1)
 ,(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1)
 ,(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1)
 ,(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1)
 ,(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1)
 ,(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1)
 ,(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1)
 ,(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1)
 ,(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1)
 ,(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1)
 ,(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1)
 ,(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1)
 ,(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1)
 ,(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1)
 ,(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1)
 ,(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1)
 ,(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1)
 ,(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1)
 ,(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1)
 ,(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1)
 ,(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1)
 ,(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1)
 ,(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1)
 ,(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1)
 ,(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1)
 ,(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1)
 ,(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1)
 ,(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1)
 ,(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1)
 ,(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1)
 ,(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1)
 ,(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1)
 ,(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1)
 ,(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,6,1,51,0,-1,'0',0,1)
 ,(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1)
 ,(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1)
 ,(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1)
 ,(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1)
 ,(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1)
 ,(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,5,59,0,-1,'0',0,1)
 ,(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1)
 ,(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,66,0,-1,'0',0,1)
 ,(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,66,0,-1,'0',0,1)
 ,(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,66,0,-1,'0',0,1)
 ,(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1)
 ,(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,70,0,-1,'0',0,1)
 ,(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,70,0,-1,'0',0,1)
 ,(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,70,0,-1,'0',0,1)
 ,(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,70,0,-1,'0',0,1)
 ,(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,70,0,-1,'0',0,1)
 ,(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,70,0,-1,'0',0,1)
 ,(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,70,0,-1,'0',0,1)
 ,(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,70,0,-1,'0',0,1)
 ,(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,70,0,-1,'0',0,1)
 ,(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,70,0,-1,'0',0,1)
 ,(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1)
 ,(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,81,0,-1,'0',0,1)
 ,(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,81,0,-1,'0',0,1)
 ,(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,81,0,-1,'0',0,1)
 ,(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1)
 ,(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,85,0,-1,'0',0,1)
 ,(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,85,0,-1,'0',0,1)
 ,(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1)
 ,(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,88,0,-1,'0',0,1)
 ,(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,88,0,-1,'0',0,1)
 ,(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1)
 ,(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,91,0,-1,'0',0,1)
 ,(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,91,0,-1,'0',0,1)
 ,(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,91,0,-1,'0',0,1)
 ,(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,91,0,-1,'0',0,1)
 ,(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,91,0,-1,'0',0,1)
 ,(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,4,8,51,0,-1,'0',0,1)
 ,(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,97,0,-1,'0',0,1)
 ,(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,97,0,-1,'0',0,1)
 ,(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,97,0,-1,'0',0,1)
 ,(101,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1)
 ,(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(104,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1)
 ,(106,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1)
 ,(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,1,0,0,0,-1,'0',0,1)
 ,(109,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(111,0,1,0,NULL,NULL,NULL,1,111,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(112,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1)
 ,(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,112,0,-1,'0',0,1)
 ,(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,112,0,-1,'0',0,1)
 ,(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,112,0,-1,'0',0,1)
 ,(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,112,0,-1,'0',0,1)
 ,(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1)
 ,(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1)
 ,(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1)
 ,(120,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1)
 ,(121,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(122,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,-1,'0',0,0)
 ,(123,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,-1,'0',0,0)
 ,(124,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,1,0,-1,'0',0,0)
 ,(125,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,108,0,-1,'0',0,1)
 ,(126,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(127,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(128,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(129,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(130,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(131,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(132,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,-1,'0',0,0)
 ,(133,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/db_migration.php',0,NULL,0,1,0,3,97,1,-1,'0',0,1);

DROP TABLE IF EXISTS PageSearchIndex;

CREATE TABLE IF NOT EXISTS `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO PageSearchIndex VALUES(3,'','Composer','Write for your site.','/dashboard/composer','2014-01-21 13:14:35','2014-01-21 13:15:20',NULL,0)
 ,(4,'','Write','','/dashboard/composer/write','2014-01-21 13:14:36','2014-01-21 13:15:20',NULL,0)
 ,(5,'','Drafts','','/dashboard/composer/drafts','2014-01-21 13:14:36','2014-01-21 13:15:20',NULL,0)
 ,(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2014-01-21 13:14:37','2014-01-21 13:15:21',NULL,0)
 ,(7,'','Full Sitemap','','/dashboard/sitemap/full','2014-01-21 13:14:37','2014-01-21 13:15:21',NULL,0)
 ,(8,'','Flat View','','/dashboard/sitemap/explore','2014-01-21 13:14:38','2014-01-21 13:15:21',NULL,0)
 ,(9,'','Page Search','','/dashboard/sitemap/search','2014-01-21 13:14:38','2014-01-21 13:15:21',NULL,0)
 ,(11,'','File Manager','','/dashboard/files/search','2014-01-21 13:14:39','2014-01-21 13:15:22',NULL,0)
 ,(12,'','Attributes','','/dashboard/files/attributes','2014-01-21 13:14:39','2014-01-21 13:15:22',NULL,0)
 ,(13,'','File Sets','','/dashboard/files/sets','2014-01-21 13:14:40','2014-01-21 13:15:22',NULL,0)
 ,(14,'','Add File Set','','/dashboard/files/add_set','2014-01-21 13:14:40','2014-01-21 13:15:23',NULL,0)
 ,(15,'','Members','Add and manage the user accounts and Groups on your website.','/dashboard/users','2014-01-21 13:14:41','2014-01-21 13:15:23',NULL,0)
 ,(16,'','Search Users','','/dashboard/users/search','2014-01-21 13:14:42','2014-01-21 13:15:23',NULL,0)
 ,(17,'','User Groups','','/dashboard/users/groups','2014-01-21 13:14:42','2014-01-21 13:15:23',NULL,0)
 ,(18,'','Attributes','','/dashboard/users/attributes','2014-01-21 13:14:43','2014-01-21 13:15:24',NULL,0)
 ,(19,'','Add User','','/dashboard/users/add','2014-01-21 13:14:43','2014-01-21 13:15:24',NULL,0)
 ,(20,'','Add Group','','/dashboard/users/add_group','2014-01-21 13:14:43','2014-01-21 13:15:24',NULL,0)
 ,(21,'','Group Sets','','/dashboard/users/group_sets','2014-01-21 13:14:44','2014-01-21 13:15:25',NULL,0)
 ,(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2014-01-21 13:14:44','2014-01-21 13:15:25',NULL,0)
 ,(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2014-01-21 13:14:45','2014-01-21 13:15:25',NULL,0)
 ,(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2014-01-21 13:14:45','2014-01-21 13:15:25',NULL,0)
 ,(25,'','Surveys','','/dashboard/reports/surveys','2014-01-21 13:14:46','2014-01-21 13:15:26',NULL,0)
 ,(26,'','Logs','','/dashboard/reports/logs','2014-01-21 13:14:46','2014-01-21 13:15:26',NULL,0)
 ,(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2014-01-21 13:14:47','2014-01-21 13:15:26',NULL,0)
 ,(29,'','Add','','/dashboard/pages/themes/add','2014-01-21 13:14:47','2014-01-21 13:15:26',NULL,0)
 ,(30,'','Inspect','','/dashboard/pages/themes/inspect','2014-01-21 13:14:47','2014-01-21 13:15:26',NULL,0)
 ,(31,'','Customize','','/dashboard/pages/themes/customize','2014-01-21 13:14:48','2014-01-21 13:15:27',NULL,0)
 ,(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2014-01-21 13:14:48','2014-01-21 13:15:27',NULL,0)
 ,(34,'','Attributes','','/dashboard/pages/attributes','2014-01-21 13:14:49','2014-01-21 13:15:27',NULL,0)
 ,(35,'','Single Pages','','/dashboard/pages/single','2014-01-21 13:14:49','2014-01-21 13:15:27',NULL,0)
 ,(36,'','Workflow','','/dashboard/workflow','2014-01-21 13:14:50','2014-01-21 13:15:28',NULL,0)
 ,(37,'','Workflow List','','/dashboard/workflow/list','2014-01-21 13:14:50','2014-01-21 13:15:28',NULL,0)
 ,(38,'','Waiting for Me','','/dashboard/workflow/me','2014-01-21 13:14:50','2014-01-21 13:15:28',NULL,0)
 ,(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2014-01-21 13:14:52','2014-01-21 13:15:28',NULL,0)
 ,(41,'','Block & Stack Permissions','Control who can add Blocks and Stacks on your site.','/dashboard/blocks/permissions','2014-01-21 13:14:52','2014-01-21 13:15:28',NULL,0)
 ,(42,'','Stack List','','/dashboard/blocks/stacks/list','2014-01-21 13:14:52','2014-01-21 13:15:29',NULL,0)
 ,(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2014-01-21 13:14:53','2014-01-21 13:15:29',NULL,0)
 ,(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2014-01-21 13:14:54','2014-01-21 13:15:29',NULL,0)
 ,(45,'','Dashboard','','/dashboard/news','2014-01-21 13:14:54','2014-01-21 13:15:29',NULL,0)
 ,(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2014-01-21 13:14:55','2014-01-21 13:15:29',NULL,0)
 ,(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2014-01-21 13:14:55','2014-01-21 13:15:29',NULL,0)
 ,(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2014-01-21 13:14:55','2014-01-21 13:15:29',NULL,0)
 ,(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2014-01-21 13:14:56','2014-01-21 13:15:30',NULL,0)
 ,(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2014-01-21 13:14:56','2014-01-21 13:15:30',NULL,0)
 ,(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2014-01-21 13:14:57','2014-01-21 13:15:30',NULL,0)
 ,(53,'','Site Name','','/dashboard/system/basics/site_name','2014-01-21 13:14:57','2014-01-21 13:15:30',NULL,0)
 ,(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2014-01-21 13:14:58','2014-01-21 13:15:30',NULL,0)
 ,(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2014-01-21 13:14:58','2014-01-21 13:15:30',NULL,0)
 ,(56,'','Languages','','/dashboard/system/basics/multilingual','2014-01-21 13:14:58','2014-01-21 13:15:30',NULL,0)
 ,(57,'','Time Zone','','/dashboard/system/basics/timezone','2014-01-21 13:14:59','2014-01-21 13:15:30',NULL,0)
 ,(58,'','Interface Preferences','','/dashboard/system/basics/interface','2014-01-21 13:14:59','2014-01-21 13:15:30',NULL,0)
 ,(60,'','Pretty URLs','','/dashboard/system/seo/urls','2014-01-21 13:15:00','2014-01-21 13:15:31',NULL,0)
 ,(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2014-01-21 13:15:00','2014-01-21 13:15:31',NULL,0)
 ,(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2014-01-21 13:15:01','2014-01-21 13:15:31',NULL,0)
 ,(63,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2014-01-21 13:15:01','2014-01-21 13:15:31',NULL,0)
 ,(64,'','Statistics','','/dashboard/system/seo/statistics','2014-01-21 13:15:01','2014-01-21 13:15:31',NULL,0)
 ,(65,'','Search Index','','/dashboard/system/seo/search_index','2014-01-21 13:15:02','2014-01-21 13:15:31',NULL,0)
 ,(67,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2014-01-21 13:15:03','2014-01-21 13:15:31',NULL,0)
 ,(68,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2014-01-21 13:15:03','2014-01-21 13:15:31',NULL,0)
 ,(69,'','Automated Jobs','','/dashboard/system/optimization/jobs','2014-01-21 13:15:04','2014-01-21 13:15:32',NULL,0)
 ,(71,'','Site Access','','/dashboard/system/permissions/site','2014-01-21 13:15:04','2014-01-21 13:15:32',NULL,0)
 ,(72,'','File Manager Permissions','','/dashboard/system/permissions/files','2014-01-21 13:15:04','2014-01-21 13:15:32',NULL,0)
 ,(73,'','Allowed File Types','','/dashboard/system/permissions/file_types','2014-01-21 13:15:05','2014-01-21 13:15:32',NULL,0)
 ,(74,'','Task Permissions','','/dashboard/system/permissions/tasks','2014-01-21 13:15:05','2014-01-21 13:15:32',NULL,0)
 ,(77,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2014-01-21 13:15:07','2014-01-21 13:15:32',NULL,0)
 ,(78,'','Captcha Setup','','/dashboard/system/permissions/captcha','2014-01-21 13:15:08','2014-01-21 13:15:32',NULL,0)
 ,(79,'','Spam Control','','/dashboard/system/permissions/antispam','2014-01-21 13:15:08','2014-01-21 13:15:32',NULL,0)
 ,(80,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2014-01-21 13:15:09','2014-01-21 13:15:32',NULL,0)
 ,(82,'','Login Destination','','/dashboard/system/registration/postlogin','2014-01-21 13:15:09','2014-01-21 13:15:33',NULL,0)
 ,(83,'','Public Profiles','','/dashboard/system/registration/profiles','2014-01-21 13:15:10','2014-01-21 13:15:33',NULL,0)
 ,(84,'','Public Registration','','/dashboard/system/registration/public_registration','2014-01-21 13:15:10','2014-01-21 13:15:33',NULL,0)
 ,(85,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2014-01-21 13:15:11','2014-01-21 13:15:33',NULL,0)
 ,(86,'','SMTP Method','','/dashboard/system/mail/method','2014-01-21 13:15:11','2014-01-21 13:15:33',NULL,0)
 ,(87,'','Email Importers','','/dashboard/system/mail/importers','2014-01-21 13:15:12','2014-01-21 13:15:33',NULL,0)
 ,(88,'','Attributes','Setup attributes for pages, users, Files and more.','/dashboard/system/attributes','2014-01-21 13:15:12','2014-01-21 13:15:33',NULL,0)
 ,(89,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2014-01-21 13:15:13','2014-01-21 13:15:33',NULL,0)
 ,(90,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2014-01-21 13:15:13','2014-01-21 13:15:34',NULL,0)
 ,(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0)
 ,(92,'','Environment Information','','/dashboard/system/environment/info','2014-01-21 13:15:14','2014-01-21 13:15:34',NULL,0)
 ,(93,'','Debug Settings','','/dashboard/system/environment/debug','2014-01-21 13:15:14','2014-01-21 13:15:34',NULL,0)
 ,(94,'','Logging Settings','','/dashboard/system/environment/logging','2014-01-21 13:15:15','2014-01-21 13:15:34',NULL,0)
 ,(95,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2014-01-21 13:15:15','2014-01-21 13:15:34',NULL,0)
 ,(96,'','Proxy Server','','/dashboard/system/environment/proxy','2014-01-21 13:15:16','2014-01-21 13:15:35',NULL,0)
 ,(97,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2014-01-21 13:15:17','2014-01-21 13:15:35',NULL,0)
 ,(99,'','Update concrete5','','/dashboard/system/backup_restore/update','2014-01-21 13:15:17','2014-01-21 13:15:35',NULL,0)
 ,(100,'','Database XML','','/dashboard/system/backup_restore/database','2014-01-21 13:15:18','2014-01-21 13:15:35',NULL,0)
 ,(105,'	Welcome to concrete5.\n						It\'s easy to edit content and add Pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2014-01-21 13:15:19','2014-01-21 13:15:36',NULL,0)
 ,(106,'','Customize Dashboard Home','','/dashboard/home','2014-01-21 13:15:19','2014-01-21 13:15:38',NULL,0)
 ,(1,' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.  \r\n Learn more → 				Complete Solution \r\n				A tool anything and everything you can think  \r\n				 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.  \r\n Learn more → \r\nPerfect Logic\r\n \r\n\r\nAll you want your website to do\r\n  							Uber Culture \r\n				Fresh. Modern and ready for future   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur neque leo, nec aliquam arcu pellentesque eget. Nullam placerat orci a orci luctus, ac euismod felis ullamcorper. Nulla ut nisl semper, ullamcorper purus blandit, convallis enim. Aenean ultricies semper massa, feugiat ultrices dolor commodo non. Praesent adipiscing purus sit amet malesuada fringilla.  \r\n Learn more → Social Connection   Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.     Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim.   				\r\n					\r\n				 Subscribe → Newsletter  Contact  \r\n    \r\n        \r\n        \r\n		\r\n    \r\n Send it → News Updates  				\r\n					\r\n					 Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim. \r\n				  				\r\n					\r\n					 Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim. \r\n				  				\r\n					\r\n					 Vestibulum eget arcu eu lacus sollicitudin porta et sed est. Vestibulum at vehicula enim. \r\n				  Visit our Blog → ','Home','Page d\'accueil du Site',NULL,'2014-01-21 13:14:00','2014-03-10 18:27:56',NULL,0)
 ,(122,' page1   Phasellus sodales hendrerit nulla, in condimentum massa vehicula sit amet. Proin mattis feugiat sem ac mollis.  ','Produits','Page de produits','/produits','2014-01-21 15:11:00','2014-03-10 18:02:48',NULL,0)
 ,(123,'','Plan','Le plan','/plan','2014-01-21 15:12:00','2014-03-10 14:44:43',NULL,0)
 ,(124,'','Contact','Page de contact','/contact','2014-01-21 15:12:00','2014-03-10 17:24:36',NULL,0)
 ,(132,'','Blog','Notre blog','/blog','2014-03-10 14:46:00','2014-03-10 18:04:29',NULL,0);

DROP TABLE IF EXISTS PageStatistics;

CREATE TABLE IF NOT EXISTS `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=815 DEFAULT CHARSET=utf8;

INSERT INTO PageStatistics VALUES(1,1,'2014-01-21','2014-01-21 14:16:04',1)
 ,(2,105,'2014-01-21','2014-01-21 14:16:06',1)
 ,(3,1,'2014-01-21','2014-01-21 14:22:03',1)
 ,(4,2,'2014-01-21','2014-01-21 14:22:36',1)
 ,(5,2,'2014-01-21','2014-01-21 14:22:37',1)
 ,(6,11,'2014-01-21','2014-01-21 14:22:43',1)
 ,(7,2,'2014-01-21','2014-01-21 14:22:47',1)
 ,(8,1,'2014-01-21','2014-01-21 14:24:37',1)
 ,(9,2,'2014-01-21','2014-01-21 14:25:20',1)
 ,(10,1,'2014-01-21','2014-01-21 14:25:23',1)
 ,(11,23,'2014-01-21','2014-01-21 14:26:48',1)
 ,(12,1,'2014-01-21','2014-01-21 14:26:55',1)
 ,(13,1,'2014-01-21','2014-01-21 14:27:55',1)
 ,(14,110,'2014-01-21','2014-01-21 14:30:23',1)
 ,(15,1,'2014-01-21','2014-01-21 14:30:23',0)
 ,(16,110,'2014-01-21','2014-01-21 14:30:40',0)
 ,(17,110,'2014-01-21','2014-01-21 14:30:49',0)
 ,(18,1,'2014-01-21','2014-01-21 14:30:50',1)
 ,(19,1,'2014-01-21','2014-01-21 14:30:57',1)
 ,(20,1,'2014-01-21','2014-01-21 14:31:00',1)
 ,(21,28,'2014-01-21','2014-01-21 14:36:36',1)
 ,(22,28,'2014-01-21','2014-01-21 14:36:54',1)
 ,(23,30,'2014-01-21','2014-01-21 14:36:54',1)
 ,(24,28,'2014-01-21','2014-01-21 14:37:17',1)
 ,(25,1,'2014-01-21','2014-01-21 14:37:20',1)
 ,(26,110,'2014-01-21','2014-01-21 14:37:23',1)
 ,(27,1,'2014-01-21','2014-01-21 14:37:24',0)
 ,(28,1,'2014-01-21','2014-01-21 14:37:26',0)
 ,(29,110,'2014-01-21','2014-01-21 14:37:33',0)
 ,(30,110,'2014-01-21','2014-01-21 14:37:37',0)
 ,(31,1,'2014-01-21','2014-01-21 14:37:37',1)
 ,(32,28,'2014-01-21','2014-01-21 14:37:46',1)
 ,(33,28,'2014-01-21','2014-01-21 14:37:52',1)
 ,(34,28,'2014-01-21','2014-01-21 14:37:55',1)
 ,(35,1,'2014-01-21','2014-01-21 14:38:00',1)
 ,(36,1,'2014-01-21','2014-01-21 14:40:10',1)
 ,(37,1,'2014-01-21','2014-01-21 14:40:41',1)
 ,(38,1,'2014-01-21','2014-01-21 14:41:41',1)
 ,(39,1,'2014-01-21','2014-01-21 14:55:25',1)
 ,(40,1,'2014-01-21','2014-01-21 14:55:42',1)
 ,(41,1,'2014-01-21','2014-01-21 14:56:57',1)
 ,(42,1,'2014-01-21','2014-01-21 14:57:24',1)
 ,(43,1,'2014-01-21','2014-01-21 14:59:09',1)
 ,(44,1,'2014-01-21','2014-01-21 14:59:47',1)
 ,(45,1,'2014-01-21','2014-01-21 15:22:06',1)
 ,(46,1,'2014-01-21','2014-01-21 15:24:43',1)
 ,(47,1,'2014-01-21','2014-01-21 15:24:54',1)
 ,(48,1,'2014-01-21','2014-01-21 15:25:02',1)
 ,(49,1,'2014-01-21','2014-01-21 15:31:07',1)
 ,(50,1,'2014-01-21','2014-01-21 15:31:29',1)
 ,(51,23,'2014-01-21','2014-01-21 15:33:07',1)
 ,(52,25,'2014-01-21','2014-01-21 15:33:26',1)
 ,(53,24,'2014-01-21','2014-01-21 15:33:29',1)
 ,(54,23,'2014-01-21','2014-01-21 15:33:31',1)
 ,(55,1,'2014-01-21','2014-01-21 15:34:03',1)
 ,(56,1,'2014-01-21','2014-01-21 15:34:49',1)
 ,(57,1,'2014-01-21','2014-01-21 15:34:51',1)
 ,(58,1,'2014-01-21','2014-01-21 15:34:59',1)
 ,(59,1,'2014-01-21','2014-01-21 15:36:03',1)
 ,(60,7,'2014-01-21','2014-01-21 15:36:50',1)
 ,(61,1,'2014-01-21','2014-01-21 15:37:21',1)
 ,(62,7,'2014-01-21','2014-01-21 15:37:24',1)
 ,(63,1,'2014-01-21','2014-01-21 15:37:55',1)
 ,(64,2,'2014-01-21','2014-01-21 15:52:43',1)
 ,(65,2,'2014-01-21','2014-01-21 15:52:44',1)
 ,(66,32,'2014-01-21','2014-01-21 15:52:53',1)
 ,(67,2,'2014-01-21','2014-01-21 15:52:58',1)
 ,(68,1,'2014-01-21','2014-01-21 15:54:54',1)
 ,(69,1,'2014-01-21','2014-01-21 15:54:58',1)
 ,(70,2,'2014-01-21','2014-01-21 15:59:58',1)
 ,(71,32,'2014-01-21','2014-01-21 16:00:03',1)
 ,(72,2,'2014-01-21','2014-01-21 16:00:13',1)
 ,(73,35,'2014-01-21','2014-01-21 16:00:19',1)
 ,(74,2,'2014-01-21','2014-01-21 16:00:32',1)
 ,(75,35,'2014-01-21','2014-01-21 16:10:09',1)
 ,(76,2,'2014-01-21','2014-01-21 16:10:15',1)
 ,(77,7,'2014-01-21','2014-01-21 16:11:36',1)
 ,(78,6,'2014-01-21','2014-01-21 16:12:07',1)
 ,(79,7,'2014-01-21','2014-01-21 16:12:08',1)
 ,(80,6,'2014-01-21','2014-01-21 16:12:24',1)
 ,(81,7,'2014-01-21','2014-01-21 16:12:24',1)
 ,(82,6,'2014-01-21','2014-01-21 16:13:11',1)
 ,(83,7,'2014-01-21','2014-01-21 16:13:11',1)
 ,(84,122,'2014-01-21','2014-01-21 16:16:32',1)
 ,(85,7,'2014-01-21','2014-01-21 16:16:42',1)
 ,(86,122,'2014-01-21','2014-01-21 16:16:44',1)
 ,(87,1,'2014-01-27','2014-01-27 13:23:34',0)
 ,(88,110,'2014-01-27','2014-01-27 13:24:10',0)
 ,(89,110,'2014-01-27','2014-01-27 13:24:22',0)
 ,(90,1,'2014-01-27','2014-01-27 13:24:24',1)
 ,(91,106,'2014-01-27','2014-01-27 13:24:26',1)
 ,(92,1,'2014-01-27','2014-01-27 13:27:13',1)
 ,(93,1,'2014-01-27','2014-01-27 13:27:19',1)
 ,(94,2,'2014-01-27','2014-01-27 13:27:40',1)
 ,(95,2,'2014-01-27','2014-01-27 13:27:40',1)
 ,(96,2,'2014-01-27','2014-01-27 13:27:41',1)
 ,(97,7,'2014-01-27','2014-01-27 13:27:51',1)
 ,(98,1,'2014-01-27','2014-01-27 13:28:29',1)
 ,(99,1,'2014-01-27','2014-01-27 13:29:31',1)
 ,(100,124,'2014-01-27','2014-01-27 13:29:32',1)
 ,(101,1,'2014-01-27','2014-01-27 13:29:36',1)
 ,(102,123,'2014-01-27','2014-01-27 13:29:38',1)
 ,(103,1,'2014-01-27','2014-01-27 13:29:39',1)
 ,(104,124,'2014-01-27','2014-01-27 13:29:42',1)
 ,(105,1,'2014-01-27','2014-01-27 13:29:50',1)
 ,(106,122,'2014-01-27','2014-01-27 13:29:58',1)
 ,(107,1,'2014-01-27','2014-01-27 13:30:00',1)
 ,(108,122,'2014-01-27','2014-01-27 13:30:04',1)
 ,(109,1,'2014-01-27','2014-01-27 13:30:16',1)
 ,(110,2,'2014-01-27','2014-01-27 13:30:20',1)
 ,(111,2,'2014-01-27','2014-01-27 13:30:21',1)
 ,(112,7,'2014-01-27','2014-01-27 13:30:22',1)
 ,(113,1,'2014-01-27','2014-01-27 13:31:00',1)
 ,(114,122,'2014-01-27','2014-01-27 13:31:06',1)
 ,(115,122,'2014-01-27','2014-01-27 13:31:08',1)
 ,(116,122,'2014-01-27','2014-01-27 13:31:24',1)
 ,(117,1,'2014-01-27','2014-01-27 13:31:27',1)
 ,(118,1,'2014-01-27','2014-01-27 13:31:31',1)
 ,(119,1,'2014-01-27','2014-01-27 13:31:47',1)
 ,(120,122,'2014-01-27','2014-01-27 13:34:52',1)
 ,(121,1,'2014-01-27','2014-01-27 13:34:55',1)
 ,(122,122,'2014-01-27','2014-01-27 13:35:04',1)
 ,(123,122,'2014-01-27','2014-01-27 13:35:05',1)
 ,(124,2,'2014-01-27','2014-01-27 13:35:49',1)
 ,(125,7,'2014-01-27','2014-01-27 13:35:51',1)
 ,(126,1,'2014-02-18','2014-02-18 14:09:53',0)
 ,(127,110,'2014-02-18','2014-02-18 14:10:53',0)
 ,(128,110,'2014-02-18','2014-02-18 14:10:58',0)
 ,(129,110,'2014-02-18','2014-02-18 14:11:03',0)
 ,(130,1,'2014-02-18','2014-02-18 14:11:04',1)
 ,(131,106,'2014-02-18','2014-02-18 14:11:06',1)
 ,(132,2,'2014-02-18','2014-02-18 14:11:29',1)
 ,(133,28,'2014-02-18','2014-02-18 14:11:55',1)
 ,(134,49,'2014-02-18','2014-02-18 14:12:18',1)
 ,(135,48,'2014-02-18','2014-02-18 14:12:18',1)
 ,(136,28,'2014-02-18','2014-02-18 14:12:22',1)
 ,(137,1,'2014-02-18','2014-02-18 14:13:10',1)
 ,(138,1,'2014-02-18','2014-02-18 14:18:51',1)
 ,(139,1,'2014-02-18','2014-02-18 14:20:46',1)
 ,(140,1,'2014-02-18','2014-02-18 14:21:49',1)
 ,(141,1,'2014-02-18','2014-02-18 14:24:46',1)
 ,(142,1,'2014-02-18','2014-02-18 14:27:49',1)
 ,(143,1,'2014-02-18','2014-02-18 14:27:51',1)
 ,(144,1,'2014-02-18','2014-02-18 14:29:42',1)
 ,(145,1,'2014-02-18','2014-02-18 14:30:14',1)
 ,(146,1,'2014-02-18','2014-02-18 14:32:29',1)
 ,(147,1,'2014-02-18','2014-02-18 14:34:03',1)
 ,(148,1,'2014-02-18','2014-02-18 14:35:49',1)
 ,(149,1,'2014-02-18','2014-02-18 14:37:55',1)
 ,(150,1,'2014-02-18','2014-02-18 14:38:02',1)
 ,(151,1,'2014-02-18','2014-02-18 14:39:31',1)
 ,(152,1,'2014-02-18','2014-02-18 14:40:26',1)
 ,(153,1,'2014-02-18','2014-02-18 14:40:40',1)
 ,(154,1,'2014-02-18','2014-02-18 14:41:02',1)
 ,(155,1,'2014-02-18','2014-02-18 14:59:12',1)
 ,(156,1,'2014-02-18','2014-02-18 14:59:16',1)
 ,(157,1,'2014-02-18','2014-02-18 15:00:54',1)
 ,(158,1,'2014-02-18','2014-02-18 15:03:01',1)
 ,(159,1,'2014-02-18','2014-02-18 15:04:09',1)
 ,(160,1,'2014-02-18','2014-02-18 15:05:12',1)
 ,(161,1,'2014-02-18','2014-02-18 15:05:14',1)
 ,(162,110,'2014-02-18','2014-02-18 15:06:58',1)
 ,(163,110,'2014-02-18','2014-02-18 15:07:05',1)
 ,(164,1,'2014-02-18','2014-02-18 15:07:06',1)
 ,(165,110,'2014-02-18','2014-02-18 15:07:16',1)
 ,(166,110,'2014-02-18','2014-02-18 15:07:23',1)
 ,(167,1,'2014-02-18','2014-02-18 15:07:24',1)
 ,(168,1,'2014-02-18','2014-02-18 15:07:36',1)
 ,(169,110,'2014-02-18','2014-02-18 15:07:51',1)
 ,(170,110,'2014-02-18','2014-02-18 15:08:08',1)
 ,(171,1,'2014-02-18','2014-02-18 15:08:09',1)
 ,(172,28,'2014-02-18','2014-02-18 15:08:36',1)
 ,(173,2,'2014-02-18','2014-02-18 15:08:42',1)
 ,(174,1,'2014-02-18','2014-02-18 15:08:45',1)
 ,(175,2,'2014-02-18','2014-02-18 15:08:46',1)
 ,(176,28,'2014-02-18','2014-02-18 15:08:50',1)
 ,(177,31,'2014-02-18','2014-02-18 15:09:05',1)
 ,(178,28,'2014-02-18','2014-02-18 15:09:09',1)
 ,(179,31,'2014-02-18','2014-02-18 15:09:14',1)
 ,(180,28,'2014-02-18','2014-02-18 15:09:18',1)
 ,(181,30,'2014-02-18','2014-02-18 15:09:30',1)
 ,(182,30,'2014-02-18','2014-02-18 15:09:42',1)
 ,(183,30,'2014-02-18','2014-02-18 15:09:45',1)
 ,(184,28,'2014-02-18','2014-02-18 15:09:49',1)
 ,(185,1,'2014-02-18','2014-02-18 15:09:57',1)
 ,(186,1,'2014-02-18','2014-02-18 15:11:33',1)
 ,(187,2,'2014-02-18','2014-02-18 15:14:18',1)
 ,(188,28,'2014-02-18','2014-02-18 15:14:21',1)
 ,(189,31,'2014-02-18','2014-02-18 15:14:24',1)
 ,(190,28,'2014-02-18','2014-02-18 15:14:26',1)
 ,(191,28,'2014-02-18','2014-02-18 15:15:07',1)
 ,(192,28,'2014-02-18','2014-02-18 15:15:53',1)
 ,(193,28,'2014-02-18','2014-02-18 15:16:06',1)
 ,(194,28,'2014-02-18','2014-02-18 15:16:09',1)
 ,(195,30,'2014-02-18','2014-02-18 15:16:10',1)
 ,(196,28,'2014-02-18','2014-02-18 15:16:14',1)
 ,(197,28,'2014-02-18','2014-02-18 15:16:16',1)
 ,(198,28,'2014-02-18','2014-02-18 15:16:18',1)
 ,(199,28,'2014-02-18','2014-02-18 15:16:44',1)
 ,(200,28,'2014-02-18','2014-02-18 15:16:46',1)
 ,(201,30,'2014-02-18','2014-02-18 15:16:47',1)
 ,(202,28,'2014-02-18','2014-02-18 15:16:49',1)
 ,(203,28,'2014-02-18','2014-02-18 15:16:52',1)
 ,(204,28,'2014-02-18','2014-02-18 15:16:54',1)
 ,(205,1,'2014-02-18','2014-02-18 15:16:59',1)
 ,(206,1,'2014-02-18','2014-02-18 15:39:29',1)
 ,(207,1,'2014-02-18','2014-02-18 15:39:43',1)
 ,(208,1,'2014-02-18','2014-02-18 15:40:15',1)
 ,(209,55,'2014-02-18','2014-02-18 15:40:28',1)
 ,(210,1,'2014-02-18','2014-02-18 15:44:43',1)
 ,(211,1,'2014-02-18','2014-02-18 15:45:19',1)
 ,(212,1,'2014-02-18','2014-02-18 15:48:59',1)
 ,(213,1,'2014-02-18','2014-02-18 15:52:32',1)
 ,(214,1,'2014-02-18','2014-02-18 15:52:58',1)
 ,(215,1,'2014-02-18','2014-02-18 15:54:53',1)
 ,(216,1,'2014-03-10','2014-03-10 10:12:32',0)
 ,(217,110,'2014-03-10','2014-03-10 10:12:57',0)
 ,(218,110,'2014-03-10','2014-03-10 10:13:04',0)
 ,(219,110,'2014-03-10','2014-03-10 10:13:09',0)
 ,(220,1,'2014-03-10','2014-03-10 10:13:12',1)
 ,(221,106,'2014-03-10','2014-03-10 10:13:16',1)
 ,(222,1,'2014-03-10','2014-03-10 10:13:42',1)
 ,(223,1,'2014-03-10','2014-03-10 10:22:34',1)
 ,(224,1,'2014-03-10','2014-03-10 11:00:49',1)
 ,(225,1,'2014-03-10','2014-03-10 11:03:06',1)
 ,(226,1,'2014-03-10','2014-03-10 11:06:04',1)
 ,(227,1,'2014-03-10','2014-03-10 11:23:53',1)
 ,(228,1,'2014-03-10','2014-03-10 11:24:13',1)
 ,(229,1,'2014-03-10','2014-03-10 11:29:08',1)
 ,(230,1,'2014-03-10','2014-03-10 11:29:21',1)
 ,(231,1,'2014-03-10','2014-03-10 11:30:12',1)
 ,(232,1,'2014-03-10','2014-03-10 11:30:59',1)
 ,(233,1,'2014-03-10','2014-03-10 11:31:12',1)
 ,(234,1,'2014-03-10','2014-03-10 11:32:19',1)
 ,(235,1,'2014-03-10','2014-03-10 11:33:59',1)
 ,(236,1,'2014-03-10','2014-03-10 11:34:28',1)
 ,(237,1,'2014-03-10','2014-03-10 11:34:33',1)
 ,(238,1,'2014-03-10','2014-03-10 11:35:10',1)
 ,(239,1,'2014-03-10','2014-03-10 11:38:16',1)
 ,(240,1,'2014-03-10','2014-03-10 11:38:27',1)
 ,(241,1,'2014-03-10','2014-03-10 12:27:06',1)
 ,(242,1,'2014-03-10','2014-03-10 12:28:34',1)
 ,(243,1,'2014-03-10','2014-03-10 12:29:05',1)
 ,(244,1,'2014-03-10','2014-03-10 12:29:26',1)
 ,(245,1,'2014-03-10','2014-03-10 12:29:40',1)
 ,(246,1,'2014-03-10','2014-03-10 12:29:46',1)
 ,(247,1,'2014-03-10','2014-03-10 12:30:57',1)
 ,(248,1,'2014-03-10','2014-03-10 12:31:18',1)
 ,(249,1,'2014-03-10','2014-03-10 12:34:20',1)
 ,(250,1,'2014-03-10','2014-03-10 12:34:24',1)
 ,(251,1,'2014-03-10','2014-03-10 12:34:40',1)
 ,(252,1,'2014-03-10','2014-03-10 12:35:26',1)
 ,(253,1,'2014-03-10','2014-03-10 12:35:34',1)
 ,(254,1,'2014-03-10','2014-03-10 12:35:40',1)
 ,(255,68,'2014-03-10','2014-03-10 12:35:51',1)
 ,(256,68,'2014-03-10','2014-03-10 12:35:54',1)
 ,(257,68,'2014-03-10','2014-03-10 12:35:56',1)
 ,(258,68,'2014-03-10','2014-03-10 12:35:59',1)
 ,(259,68,'2014-03-10','2014-03-10 12:35:59',1)
 ,(260,1,'2014-03-10','2014-03-10 12:36:02',1)
 ,(261,1,'2014-03-10','2014-03-10 12:36:26',1)
 ,(262,1,'2014-03-10','2014-03-10 12:37:07',1)
 ,(263,1,'2014-03-10','2014-03-10 12:38:13',1)
 ,(264,1,'2014-03-10','2014-03-10 12:38:18',1)
 ,(265,1,'2014-03-10','2014-03-10 12:38:40',1)
 ,(266,1,'2014-03-10','2014-03-10 12:38:41',1)
 ,(267,1,'2014-03-10','2014-03-10 12:40:17',1)
 ,(268,1,'2014-03-10','2014-03-10 12:42:37',1)
 ,(269,2,'2014-03-10','2014-03-10 12:43:50',1)
 ,(270,7,'2014-03-10','2014-03-10 12:43:53',1)
 ,(271,1,'2014-03-10','2014-03-10 12:44:00',1)
 ,(272,1,'2014-03-10','2014-03-10 12:44:11',1)
 ,(273,1,'2014-03-10','2014-03-10 12:51:10',1)
 ,(274,1,'2014-03-10','2014-03-10 12:51:25',1)
 ,(275,1,'2014-03-10','2014-03-10 12:54:43',1)
 ,(276,1,'2014-03-10','2014-03-10 12:58:17',1)
 ,(277,1,'2014-03-10','2014-03-10 12:59:07',1)
 ,(278,1,'2014-03-10','2014-03-10 13:01:38',1)
 ,(279,1,'2014-03-10','2014-03-10 13:03:46',1)
 ,(280,1,'2014-03-10','2014-03-10 13:07:30',1)
 ,(281,1,'2014-03-10','2014-03-10 13:07:44',1)
 ,(282,1,'2014-03-10','2014-03-10 13:09:56',1)
 ,(283,1,'2014-03-10','2014-03-10 13:10:00',1)
 ,(284,1,'2014-03-10','2014-03-10 13:11:03',1)
 ,(285,1,'2014-03-10','2014-03-10 13:13:50',1)
 ,(286,1,'2014-03-10','2014-03-10 13:14:45',1)
 ,(287,2,'2014-03-10','2014-03-10 13:17:18',1)
 ,(288,32,'2014-03-10','2014-03-10 13:17:21',1)
 ,(289,33,'2014-03-10','2014-03-10 13:17:26',1)
 ,(290,33,'2014-03-10','2014-03-10 13:17:43',1)
 ,(291,32,'2014-03-10','2014-03-10 13:17:44',1)
 ,(292,33,'2014-03-10','2014-03-10 13:17:48',1)
 ,(293,33,'2014-03-10','2014-03-10 13:18:01',1)
 ,(294,32,'2014-03-10','2014-03-10 13:18:01',1)
 ,(295,2,'2014-03-10','2014-03-10 13:18:06',1)
 ,(296,7,'2014-03-10','2014-03-10 13:18:09',1)
 ,(297,1,'2014-03-10','2014-03-10 13:18:29',1)
 ,(298,1,'2014-03-10','2014-03-10 13:18:54',1)
 ,(299,1,'2014-03-10','2014-03-10 13:19:23',1)
 ,(300,68,'2014-03-10','2014-03-10 13:19:31',1)
 ,(301,68,'2014-03-10','2014-03-10 13:19:33',1)
 ,(302,68,'2014-03-10','2014-03-10 13:19:33',1)
 ,(303,1,'2014-03-10','2014-03-10 13:19:35',1)
 ,(304,1,'2014-03-10','2014-03-10 13:19:42',1)
 ,(305,122,'2014-03-10','2014-03-10 13:19:47',1)
 ,(306,125,'2014-03-10','2014-03-10 13:19:49',1)
 ,(307,122,'2014-03-10','2014-03-10 13:19:52',1)
 ,(308,1,'2014-03-10','2014-03-10 13:19:54',1)
 ,(309,2,'2014-03-10','2014-03-10 13:19:59',1)
 ,(310,7,'2014-03-10','2014-03-10 13:20:02',1)
 ,(311,2,'2014-03-10','2014-03-10 13:20:16',1)
 ,(312,32,'2014-03-10','2014-03-10 13:20:23',1)
 ,(313,32,'2014-03-10','2014-03-10 13:20:29',1)
 ,(314,32,'2014-03-10','2014-03-10 13:20:40',1)
 ,(315,32,'2014-03-10','2014-03-10 13:20:52',1)
 ,(316,128,'2014-03-10','2014-03-10 13:20:52',1)
 ,(317,1,'2014-03-10','2014-03-10 13:21:15',1)
 ,(318,2,'2014-03-10','2014-03-10 13:21:19',1)
 ,(319,32,'2014-03-10','2014-03-10 13:21:22',1)
 ,(320,2,'2014-03-10','2014-03-10 13:21:25',1)
 ,(321,7,'2014-03-10','2014-03-10 13:21:27',1)
 ,(322,2,'2014-03-10','2014-03-10 13:21:48',1)
 ,(323,32,'2014-03-10','2014-03-10 13:21:50',1)
 ,(324,32,'2014-03-10','2014-03-10 13:21:53',1)
 ,(325,32,'2014-03-10','2014-03-10 13:22:04',1)
 ,(326,32,'2014-03-10','2014-03-10 13:22:04',1)
 ,(327,68,'2014-03-10','2014-03-10 13:22:09',1)
 ,(328,68,'2014-03-10','2014-03-10 13:22:11',1)
 ,(329,68,'2014-03-10','2014-03-10 13:22:11',1)
 ,(330,1,'2014-03-10','2014-03-10 13:22:14',1)
 ,(331,1,'2014-03-10','2014-03-10 13:23:52',1)
 ,(332,1,'2014-03-10','2014-03-10 13:23:57',1)
 ,(333,2,'2014-03-10','2014-03-10 13:24:01',1)
 ,(334,32,'2014-03-10','2014-03-10 13:24:09',1)
 ,(335,32,'2014-03-10','2014-03-10 13:24:36',1)
 ,(336,128,'2014-03-10','2014-03-10 13:24:36',1)
 ,(337,32,'2014-03-10','2014-03-10 13:24:40',1)
 ,(338,32,'2014-03-10','2014-03-10 13:24:48',1)
 ,(339,32,'2014-03-10','2014-03-10 13:25:00',1)
 ,(340,32,'2014-03-10','2014-03-10 13:25:14',1)
 ,(341,32,'2014-03-10','2014-03-10 13:25:14',1)
 ,(342,32,'2014-03-10','2014-03-10 13:28:30',1)
 ,(343,32,'2014-03-10','2014-03-10 13:28:35',1)
 ,(344,2,'2014-03-10','2014-03-10 13:28:40',1)
 ,(345,7,'2014-03-10','2014-03-10 13:28:43',1)
 ,(346,1,'2014-03-10','2014-03-10 13:29:15',1)
 ,(347,1,'2014-03-10','2014-03-10 13:29:18',1)
 ,(348,1,'2014-03-10','2014-03-10 13:29:20',1)
 ,(349,1,'2014-03-10','2014-03-10 13:29:39',1)
 ,(350,1,'2014-03-10','2014-03-10 13:31:02',1)
 ,(351,68,'2014-03-10','2014-03-10 13:31:24',1)
 ,(352,68,'2014-03-10','2014-03-10 13:31:26',1)
 ,(353,68,'2014-03-10','2014-03-10 13:31:26',1)
 ,(354,1,'2014-03-10','2014-03-10 13:31:29',1)
 ,(355,1,'2014-03-10','2014-03-10 13:31:43',1)
 ,(356,2,'2014-03-10','2014-03-10 13:32:31',1)
 ,(357,32,'2014-03-10','2014-03-10 13:32:38',1)
 ,(358,32,'2014-03-10','2014-03-10 13:32:46',1)
 ,(359,32,'2014-03-10','2014-03-10 13:33:16',1)
 ,(360,32,'2014-03-10','2014-03-10 13:33:26',1)
 ,(361,32,'2014-03-10','2014-03-10 13:33:32',1)
 ,(362,32,'2014-03-10','2014-03-10 13:33:32',1)
 ,(363,1,'2014-03-10','2014-03-10 13:33:49',1)
 ,(364,2,'2014-03-10','2014-03-10 13:33:58',1)
 ,(365,7,'2014-03-10','2014-03-10 13:34:02',1)
 ,(366,1,'2014-03-10','2014-03-10 13:34:07',1)
 ,(367,7,'2014-03-10','2014-03-10 13:34:09',1)
 ,(368,1,'2014-03-10','2014-03-10 13:34:39',1)
 ,(369,7,'2014-03-10','2014-03-10 13:34:47',1)
 ,(370,1,'2014-03-10','2014-03-10 13:34:57',1)
 ,(371,1,'2014-03-10','2014-03-10 13:35:25',1)
 ,(372,1,'2014-03-10','2014-03-10 13:35:26',1)
 ,(373,2,'2014-03-10','2014-03-10 13:35:35',1)
 ,(374,7,'2014-03-10','2014-03-10 13:35:40',1)
 ,(375,2,'2014-03-10','2014-03-10 13:35:49',1)
 ,(376,28,'2014-03-10','2014-03-10 13:35:55',1)
 ,(377,2,'2014-03-10','2014-03-10 13:36:02',1)
 ,(378,32,'2014-03-10','2014-03-10 13:36:05',1)
 ,(379,32,'2014-03-10','2014-03-10 13:36:53',1)
 ,(380,32,'2014-03-10','2014-03-10 13:37:08',1)
 ,(381,32,'2014-03-10','2014-03-10 13:37:09',1)
 ,(382,1,'2014-03-10','2014-03-10 13:37:17',1)
 ,(383,1,'2014-03-10','2014-03-10 13:37:19',1)
 ,(384,1,'2014-03-10','2014-03-10 13:37:26',1)
 ,(385,2,'2014-03-10','2014-03-10 13:37:30',1)
 ,(386,7,'2014-03-10','2014-03-10 13:37:33',1)
 ,(387,1,'2014-03-10','2014-03-10 13:37:52',1)
 ,(388,122,'2014-03-10','2014-03-10 13:37:55',1)
 ,(389,1,'2014-03-10','2014-03-10 13:37:56',1)
 ,(390,122,'2014-03-10','2014-03-10 13:37:57',1)
 ,(391,125,'2014-03-10','2014-03-10 13:37:59',1)
 ,(392,1,'2014-03-10','2014-03-10 13:38:01',1)
 ,(393,1,'2014-03-10','2014-03-10 13:38:47',1)
 ,(394,1,'2014-03-10','2014-03-10 13:39:38',1)
 ,(395,2,'2014-03-10','2014-03-10 13:40:42',1)
 ,(396,32,'2014-03-10','2014-03-10 13:40:48',1)
 ,(397,32,'2014-03-10','2014-03-10 13:40:54',1)
 ,(398,32,'2014-03-10','2014-03-10 13:41:04',1)
 ,(399,32,'2014-03-10','2014-03-10 13:41:04',1)
 ,(400,32,'2014-03-10','2014-03-10 13:41:35',1)
 ,(401,32,'2014-03-10','2014-03-10 13:41:43',1)
 ,(402,1,'2014-03-10','2014-03-10 13:41:46',1)
 ,(403,32,'2014-03-10','2014-03-10 13:41:55',1)
 ,(404,2,'2014-03-10','2014-03-10 13:41:57',1)
 ,(405,7,'2014-03-10','2014-03-10 13:41:59',1)
 ,(406,1,'2014-03-10','2014-03-10 13:42:46',1)
 ,(407,122,'2014-03-10','2014-03-10 13:42:48',1)
 ,(408,122,'2014-03-10','2014-03-10 13:42:50',1)
 ,(409,122,'2014-03-10','2014-03-10 13:42:52',1)
 ,(410,122,'2014-03-10','2014-03-10 13:42:58',1)
 ,(411,2,'2014-03-10','2014-03-10 13:44:55',1)
 ,(412,28,'2014-03-10','2014-03-10 13:45:01',1)
 ,(413,30,'2014-03-10','2014-03-10 13:45:20',1)
 ,(414,28,'2014-03-10','2014-03-10 13:47:39',1)
 ,(415,31,'2014-03-10','2014-03-10 13:47:58',1)
 ,(416,28,'2014-03-10','2014-03-10 13:48:02',1)
 ,(417,30,'2014-03-10','2014-03-10 13:48:03',1)
 ,(418,30,'2014-03-10','2014-03-10 13:48:15',1)
 ,(419,28,'2014-03-10','2014-03-10 13:48:23',1)
 ,(420,1,'2014-03-10','2014-03-10 13:48:31',1)
 ,(421,2,'2014-03-10','2014-03-10 13:48:33',1)
 ,(422,1,'2014-03-10','2014-03-10 13:48:35',1)
 ,(423,122,'2014-03-10','2014-03-10 13:48:39',1)
 ,(424,122,'2014-03-10','2014-03-10 13:48:40',1)
 ,(425,2,'2014-03-10','2014-03-10 13:48:43',1)
 ,(426,68,'2014-03-10','2014-03-10 13:48:54',1)
 ,(427,68,'2014-03-10','2014-03-10 13:48:55',1)
 ,(428,68,'2014-03-10','2014-03-10 13:48:56',1)
 ,(429,1,'2014-03-10','2014-03-10 13:48:59',1)
 ,(430,1,'2014-03-10','2014-03-10 13:49:01',1)
 ,(431,1,'2014-03-10','2014-03-10 13:49:04',1)
 ,(432,122,'2014-03-10','2014-03-10 13:49:06',1)
 ,(433,2,'2014-03-10','2014-03-10 13:49:09',1)
 ,(434,7,'2014-03-10','2014-03-10 13:49:13',1)
 ,(435,1,'2014-03-10','2014-03-10 13:49:41',1)
 ,(436,122,'2014-03-10','2014-03-10 13:49:43',1)
 ,(437,1,'2014-03-10','2014-03-10 13:49:45',1)
 ,(438,122,'2014-03-10','2014-03-10 13:49:54',1)
 ,(439,122,'2014-03-10','2014-03-10 13:50:16',1)
 ,(440,2,'2014-03-10','2014-03-10 13:50:27',1)
 ,(441,7,'2014-03-10','2014-03-10 13:50:36',1)
 ,(442,2,'2014-03-10','2014-03-10 13:50:52',1)
 ,(443,32,'2014-03-10','2014-03-10 13:50:56',1)
 ,(444,32,'2014-03-10','2014-03-10 13:51:02',1)
 ,(445,32,'2014-03-10','2014-03-10 13:51:11',1)
 ,(446,1,'2014-03-10','2014-03-10 13:51:19',1)
 ,(447,122,'2014-03-10','2014-03-10 13:51:23',1)
 ,(448,122,'2014-03-10','2014-03-10 13:51:26',1)
 ,(449,2,'2014-03-10','2014-03-10 13:51:29',1)
 ,(450,67,'2014-03-10','2014-03-10 13:55:22',1)
 ,(451,67,'2014-03-10','2014-03-10 13:55:29',1)
 ,(452,67,'2014-03-10','2014-03-10 13:55:29',1)
 ,(453,1,'2014-03-10','2014-03-10 13:55:32',1)
 ,(454,122,'2014-03-10','2014-03-10 13:55:34',1)
 ,(455,122,'2014-03-10','2014-03-10 13:55:36',1)
 ,(456,1,'2014-03-10','2014-03-10 13:56:00',1)
 ,(457,122,'2014-03-10','2014-03-10 13:56:02',1)
 ,(458,1,'2014-03-10','2014-03-10 13:56:04',1)
 ,(459,125,'2014-03-10','2014-03-10 13:56:06',1)
 ,(460,122,'2014-03-10','2014-03-10 13:56:09',1)
 ,(461,123,'2014-03-10','2014-03-10 13:56:10',1)
 ,(462,122,'2014-03-10','2014-03-10 13:56:13',1)
 ,(463,122,'2014-03-10','2014-03-10 13:56:15',1)
 ,(464,1,'2014-03-10','2014-03-10 13:56:17',1)
 ,(465,122,'2014-03-10','2014-03-10 13:56:18',1)
 ,(466,1,'2014-03-10','2014-03-10 13:58:00',0)
 ,(467,122,'2014-03-10','2014-03-10 13:58:06',0)
 ,(468,2,'2014-03-10','2014-03-10 13:58:13',1)
 ,(469,7,'2014-03-10','2014-03-10 13:58:16',1)
 ,(470,2,'2014-03-10','2014-03-10 14:00:58',1)
 ,(471,28,'2014-03-10','2014-03-10 14:01:01',1)
 ,(472,30,'2014-03-10','2014-03-10 14:01:04',1)
 ,(473,30,'2014-03-10','2014-03-10 14:01:26',1)
 ,(474,30,'2014-03-10','2014-03-10 14:01:28',1)
 ,(475,28,'2014-03-10','2014-03-10 14:01:44',1)
 ,(476,2,'2014-03-10','2014-03-10 14:01:51',1)
 ,(477,7,'2014-03-10','2014-03-10 14:01:55',1)
 ,(478,2,'2014-03-10','2014-03-10 14:02:05',1)
 ,(479,28,'2014-03-10','2014-03-10 14:02:17',1)
 ,(480,30,'2014-03-10','2014-03-10 14:02:19',1)
 ,(481,28,'2014-03-10','2014-03-10 14:02:42',1)
 ,(482,2,'2014-03-10','2014-03-10 14:02:46',1)
 ,(483,32,'2014-03-10','2014-03-10 14:02:49',1)
 ,(484,101,'2014-03-10','2014-03-10 14:02:54',1)
 ,(485,32,'2014-03-10','2014-03-10 14:03:01',1)
 ,(486,32,'2014-03-10','2014-03-10 14:03:11',1)
 ,(487,32,'2014-03-10','2014-03-10 14:03:21',1)
 ,(488,32,'2014-03-10','2014-03-10 14:03:33',1)
 ,(489,32,'2014-03-10','2014-03-10 14:03:33',1)
 ,(490,33,'2014-03-10','2014-03-10 14:03:53',1)
 ,(491,33,'2014-03-10','2014-03-10 14:04:10',1)
 ,(492,32,'2014-03-10','2014-03-10 14:04:16',1)
 ,(493,1,'2014-03-10','2014-03-10 14:04:24',1)
 ,(494,122,'2014-03-10','2014-03-10 14:04:26',1)
 ,(495,2,'2014-03-10','2014-03-10 14:04:28',1)
 ,(496,28,'2014-03-10','2014-03-10 14:04:31',1)
 ,(497,30,'2014-03-10','2014-03-10 14:04:36',1)
 ,(498,28,'2014-03-10','2014-03-10 14:04:44',1)
 ,(499,2,'2014-03-10','2014-03-10 14:04:48',1)
 ,(500,7,'2014-03-10','2014-03-10 14:04:50',1)
 ,(501,1,'2014-03-10','2014-03-10 14:05:14',1)
 ,(502,1,'2014-03-10','2014-03-10 14:05:17',1)
 ,(503,122,'2014-03-10','2014-03-10 14:05:19',1)
 ,(504,1,'2014-03-10','2014-03-10 14:05:21',1)
 ,(505,68,'2014-03-10','2014-03-10 14:05:26',1)
 ,(506,68,'2014-03-10','2014-03-10 14:05:29',1)
 ,(507,68,'2014-03-10','2014-03-10 14:05:29',1)
 ,(508,1,'2014-03-10','2014-03-10 14:05:33',1)
 ,(509,2,'2014-03-10','2014-03-10 14:05:39',1)
 ,(510,7,'2014-03-10','2014-03-10 14:05:41',1)
 ,(511,123,'2014-03-10','2014-03-10 14:06:11',1)
 ,(512,7,'2014-03-10','2014-03-10 14:06:13',1)
 ,(513,123,'2014-03-10','2014-03-10 14:06:24',1)
 ,(514,7,'2014-03-10','2014-03-10 14:06:26',1)
 ,(515,67,'2014-03-10','2014-03-10 14:07:43',1)
 ,(516,67,'2014-03-10','2014-03-10 14:07:53',1)
 ,(517,67,'2014-03-10','2014-03-10 14:07:53',1)
 ,(518,1,'2014-03-10','2014-03-10 14:07:58',1)
 ,(519,122,'2014-03-10','2014-03-10 14:08:00',1)
 ,(520,51,'2014-03-10','2014-03-10 14:08:11',1)
 ,(521,67,'2014-03-10','2014-03-10 14:08:13',1)
 ,(522,1,'2014-03-10','2014-03-10 14:08:32',1)
 ,(523,2,'2014-03-10','2014-03-10 14:08:35',1)
 ,(524,7,'2014-03-10','2014-03-10 14:08:40',1)
 ,(525,1,'2014-03-10','2014-03-10 14:09:16',1)
 ,(526,1,'2014-03-10','2014-03-10 14:09:21',1)
 ,(527,122,'2014-03-10','2014-03-10 14:09:22',1)
 ,(528,125,'2014-03-10','2014-03-10 14:09:25',1)
 ,(529,1,'2014-03-10','2014-03-10 14:09:27',1)
 ,(530,122,'2014-03-10','2014-03-10 14:09:29',1)
 ,(531,1,'2014-03-10','2014-03-10 14:09:32',1)
 ,(532,2,'2014-03-10','2014-03-10 14:09:35',1)
 ,(533,7,'2014-03-10','2014-03-10 14:09:38',1)
 ,(534,2,'2014-03-10','2014-03-10 14:11:16',1)
 ,(535,1,'2014-03-10','2014-03-10 14:12:56',1)
 ,(536,1,'2014-03-10','2014-03-10 14:12:58',1)
 ,(537,1,'2014-03-10','2014-03-10 14:16:15',1)
 ,(538,1,'2014-03-10','2014-03-10 14:16:23',1)
 ,(539,1,'2014-03-10','2014-03-10 14:17:31',1)
 ,(540,1,'2014-03-10','2014-03-10 14:17:47',1)
 ,(541,1,'2014-03-10','2014-03-10 14:17:52',1)
 ,(542,1,'2014-03-10','2014-03-10 14:17:56',1)
 ,(543,1,'2014-03-10','2014-03-10 14:17:58',1)
 ,(544,1,'2014-03-10','2014-03-10 14:18:26',1)
 ,(545,1,'2014-03-10','2014-03-10 14:18:29',1)
 ,(546,1,'2014-03-10','2014-03-10 14:20:45',1)
 ,(547,1,'2014-03-10','2014-03-10 14:20:45',1)
 ,(548,1,'2014-03-10','2014-03-10 14:22:16',1)
 ,(549,1,'2014-03-10','2014-03-10 14:22:16',1)
 ,(550,1,'2014-03-10','2014-03-10 14:22:31',1)
 ,(551,1,'2014-03-10','2014-03-10 14:22:32',1)
 ,(552,1,'2014-03-10','2014-03-10 14:22:43',1)
 ,(553,1,'2014-03-10','2014-03-10 14:22:44',1)
 ,(554,1,'2014-03-10','2014-03-10 14:23:10',1)
 ,(555,1,'2014-03-10','2014-03-10 14:24:10',1)
 ,(556,1,'2014-03-10','2014-03-10 14:24:16',1)
 ,(557,1,'2014-03-10','2014-03-10 14:27:28',1)
 ,(558,1,'2014-03-10','2014-03-10 14:28:30',1)
 ,(559,1,'2014-03-10','2014-03-10 14:30:59',1)
 ,(560,1,'2014-03-10','2014-03-10 14:35:09',1)
 ,(561,1,'2014-03-10','2014-03-10 14:35:28',1)
 ,(562,1,'2014-03-10','2014-03-10 14:38:55',1)
 ,(563,1,'2014-03-10','2014-03-10 14:39:19',1)
 ,(564,1,'2014-03-10','2014-03-10 14:39:22',1)
 ,(565,1,'2014-03-10','2014-03-10 14:40:29',1)
 ,(566,1,'2014-03-10','2014-03-10 14:43:07',1)
 ,(567,1,'2014-03-10','2014-03-10 14:43:08',1)
 ,(568,1,'2014-03-10','2014-03-10 14:43:29',1)
 ,(569,1,'2014-03-10','2014-03-10 14:43:30',1)
 ,(570,1,'2014-03-10','2014-03-10 14:44:11',1)
 ,(571,1,'2014-03-10','2014-03-10 14:44:11',1)
 ,(572,1,'2014-03-10','2014-03-10 14:44:35',1)
 ,(573,1,'2014-03-10','2014-03-10 14:44:36',1)
 ,(574,1,'2014-03-10','2014-03-10 14:45:20',1)
 ,(575,1,'2014-03-10','2014-03-10 14:45:21',1)
 ,(576,1,'2014-03-10','2014-03-10 14:46:03',1)
 ,(577,1,'2014-03-10','2014-03-10 14:46:14',1)
 ,(578,1,'2014-03-10','2014-03-10 14:46:16',1)
 ,(579,1,'2014-03-10','2014-03-10 14:46:33',1)
 ,(580,1,'2014-03-10','2014-03-10 14:46:34',1)
 ,(581,1,'2014-03-10','2014-03-10 14:46:40',1)
 ,(582,1,'2014-03-10','2014-03-10 14:46:52',1)
 ,(583,1,'2014-03-10','2014-03-10 14:47:13',1)
 ,(584,1,'2014-03-10','2014-03-10 14:47:14',1)
 ,(585,1,'2014-03-10','2014-03-10 14:47:20',1)
 ,(586,1,'2014-03-10','2014-03-10 14:48:22',1)
 ,(587,1,'2014-03-10','2014-03-10 14:48:53',1)
 ,(588,1,'2014-03-10','2014-03-10 14:48:54',1)
 ,(589,1,'2014-03-10','2014-03-10 14:48:59',1)
 ,(590,1,'2014-03-10','2014-03-10 14:49:02',1)
 ,(591,1,'2014-03-10','2014-03-10 14:49:42',1)
 ,(592,1,'2014-03-10','2014-03-10 14:49:58',1)
 ,(593,1,'2014-03-10','2014-03-10 14:49:59',1)
 ,(594,1,'2014-03-10','2014-03-10 14:50:08',1)
 ,(595,1,'2014-03-10','2014-03-10 14:51:27',1)
 ,(596,1,'2014-03-10','2014-03-10 14:51:48',1)
 ,(597,1,'2014-03-10','2014-03-10 14:52:11',1)
 ,(598,1,'2014-03-10','2014-03-10 14:52:19',1)
 ,(599,1,'2014-03-10','2014-03-10 15:10:25',1)
 ,(600,2,'2014-03-10','2014-03-10 15:17:47',1)
 ,(601,7,'2014-03-10','2014-03-10 15:17:50',1)
 ,(602,2,'2014-03-10','2014-03-10 15:19:38',1)
 ,(603,1,'2014-03-10','2014-03-10 15:19:41',1)
 ,(604,122,'2014-03-10','2014-03-10 15:19:45',1)
 ,(605,122,'2014-03-10','2014-03-10 15:21:07',1)
 ,(606,122,'2014-03-10','2014-03-10 15:22:11',1)
 ,(607,122,'2014-03-10','2014-03-10 15:22:50',1)
 ,(608,122,'2014-03-10','2014-03-10 15:24:33',1)
 ,(609,122,'2014-03-10','2014-03-10 15:32:13',1)
 ,(610,1,'2014-03-10','2014-03-10 15:32:15',1)
 ,(611,122,'2014-03-10','2014-03-10 15:32:18',1)
 ,(612,123,'2014-03-10','2014-03-10 15:32:19',1)
 ,(613,122,'2014-03-10','2014-03-10 15:32:24',1)
 ,(614,124,'2014-03-10','2014-03-10 15:32:26',1)
 ,(615,122,'2014-03-10','2014-03-10 15:32:27',1)
 ,(616,123,'2014-03-10','2014-03-10 15:32:31',1)
 ,(617,122,'2014-03-10','2014-03-10 15:32:32',1)
 ,(618,1,'2014-03-10','2014-03-10 15:32:36',1)
 ,(619,1,'2014-03-10','2014-03-10 15:34:22',1)
 ,(620,1,'2014-03-10','2014-03-10 15:34:24',1)
 ,(621,1,'2014-03-10','2014-03-10 15:34:28',1)
 ,(622,122,'2014-03-10','2014-03-10 15:34:30',1)
 ,(623,123,'2014-03-10','2014-03-10 15:34:32',1)
 ,(624,123,'2014-03-10','2014-03-10 15:34:34',1)
 ,(625,123,'2014-03-10','2014-03-10 15:35:21',1)
 ,(626,123,'2014-03-10','2014-03-10 15:35:24',1)
 ,(627,123,'2014-03-10','2014-03-10 15:35:29',1)
 ,(628,123,'2014-03-10','2014-03-10 15:44:19',1)
 ,(629,123,'2014-03-10','2014-03-10 15:44:27',1)
 ,(630,123,'2014-03-10','2014-03-10 15:44:42',1)
 ,(631,1,'2014-03-10','2014-03-10 15:45:19',1)
 ,(632,123,'2014-03-10','2014-03-10 15:45:23',1)
 ,(633,1,'2014-03-10','2014-03-10 15:45:28',1)
 ,(634,123,'2014-03-10','2014-03-10 15:45:34',1)
 ,(635,123,'2014-03-10','2014-03-10 15:45:36',1)
 ,(636,123,'2014-03-10','2014-03-10 15:45:50',1)
 ,(637,2,'2014-03-10','2014-03-10 15:45:58',1)
 ,(638,7,'2014-03-10','2014-03-10 15:46:01',1)
 ,(639,6,'2014-03-10','2014-03-10 15:46:18',1)
 ,(640,7,'2014-03-10','2014-03-10 15:46:18',1)
 ,(641,132,'2014-03-10','2014-03-10 15:46:49',1)
 ,(642,132,'2014-03-10','2014-03-10 15:47:08',1)
 ,(643,132,'2014-03-10','2014-03-10 15:47:30',1)
 ,(644,132,'2014-03-10','2014-03-10 15:48:32',1)
 ,(645,132,'2014-03-10','2014-03-10 15:48:44',1)
 ,(646,132,'2014-03-10','2014-03-10 15:48:50',1)
 ,(647,1,'2014-03-10','2014-03-10 15:48:52',1)
 ,(648,132,'2014-03-10','2014-03-10 15:48:54',1)
 ,(649,1,'2014-03-10','2014-03-10 17:30:15',1)
 ,(650,132,'2014-03-10','2014-03-10 18:14:27',1)
 ,(651,2,'2014-03-10','2014-03-10 18:17:45',1)
 ,(652,99,'2014-03-10','2014-03-10 18:18:03',1)
 ,(653,99,'2014-03-10','2014-03-10 18:18:06',1)
 ,(654,99,'2014-03-10','2014-03-10 18:18:08',1)
 ,(655,99,'2014-03-10','2014-03-10 18:18:11',1)
 ,(656,1,'2014-03-10','2014-03-10 18:18:15',1)
 ,(657,1,'2014-03-10','2014-03-10 18:19:45',1)
 ,(658,132,'2014-03-10','2014-03-10 18:19:47',1)
 ,(659,124,'2014-03-10','2014-03-10 18:19:50',1)
 ,(660,132,'2014-03-10','2014-03-10 18:19:53',1)
 ,(661,122,'2014-03-10','2014-03-10 18:19:55',1)
 ,(662,132,'2014-03-10','2014-03-10 18:19:57',1)
 ,(663,1,'2014-03-10','2014-03-10 18:20:01',1)
 ,(664,132,'2014-03-10','2014-03-10 18:20:11',1)
 ,(665,124,'2014-03-10','2014-03-10 18:20:14',1)
 ,(666,132,'2014-03-10','2014-03-10 18:20:17',1)
 ,(667,122,'2014-03-10','2014-03-10 18:20:32',1)
 ,(668,122,'2014-03-10','2014-03-10 18:20:44',1)
 ,(669,123,'2014-03-10','2014-03-10 18:20:46',1)
 ,(670,124,'2014-03-10','2014-03-10 18:20:48',1)
 ,(671,123,'2014-03-10','2014-03-10 18:20:50',1)
 ,(672,2,'2014-03-10','2014-03-10 18:20:52',1)
 ,(673,7,'2014-03-10','2014-03-10 18:22:04',1)
 ,(674,1,'2014-03-10','2014-03-10 18:23:57',1)
 ,(675,122,'2014-03-10','2014-03-10 18:24:05',1)
 ,(676,123,'2014-03-10','2014-03-10 18:24:11',1)
 ,(677,124,'2014-03-10','2014-03-10 18:24:12',1)
 ,(678,124,'2014-03-10','2014-03-10 18:24:17',1)
 ,(679,124,'2014-03-10','2014-03-10 18:24:34',1)
 ,(680,132,'2014-03-10','2014-03-10 18:24:41',1)
 ,(681,124,'2014-03-10','2014-03-10 18:24:43',1)
 ,(682,123,'2014-03-10','2014-03-10 18:24:44',1)
 ,(683,122,'2014-03-10','2014-03-10 18:24:45',1)
 ,(684,1,'2014-03-10','2014-03-10 18:24:47',1)
 ,(685,123,'2014-03-10','2014-03-10 18:24:52',1)
 ,(686,124,'2014-03-10','2014-03-10 18:24:53',1)
 ,(687,132,'2014-03-10','2014-03-10 18:24:54',1)
 ,(688,1,'2014-03-10','2014-03-10 18:25:21',1)
 ,(689,122,'2014-03-10','2014-03-10 18:25:25',1)
 ,(690,122,'2014-03-10','2014-03-10 18:25:31',1)
 ,(691,122,'2014-03-10','2014-03-10 18:27:14',1)
 ,(692,122,'2014-03-10','2014-03-10 18:29:28',1)
 ,(693,122,'2014-03-10','2014-03-10 18:29:51',1)
 ,(694,122,'2014-03-10','2014-03-10 18:31:52',1)
 ,(695,122,'2014-03-10','2014-03-10 18:35:33',0)
 ,(696,1,'2014-03-10','2014-03-10 18:35:35',0)
 ,(697,1,'2014-03-10','2014-03-10 18:36:32',0)
 ,(698,110,'2014-03-10','2014-03-10 18:36:48',0)
 ,(699,110,'2014-03-10','2014-03-10 18:36:54',0)
 ,(700,1,'2014-03-10','2014-03-10 18:36:55',1)
 ,(701,1,'2014-03-10','2014-03-10 18:37:45',0)
 ,(702,110,'2014-03-10','2014-03-10 18:37:55',0)
 ,(703,110,'2014-03-10','2014-03-10 18:38:04',0)
 ,(704,1,'2014-03-10','2014-03-10 18:38:05',1)
 ,(705,122,'2014-03-10','2014-03-10 18:38:09',1)
 ,(706,1,'2014-03-10','2014-03-10 18:38:11',1)
 ,(707,1,'2014-03-10','2014-03-10 18:38:13',1)
 ,(708,1,'2014-03-10','2014-03-10 18:40:20',1)
 ,(709,1,'2014-03-10','2014-03-10 18:41:09',1)
 ,(710,1,'2014-03-10','2014-03-10 18:41:14',1)
 ,(711,1,'2014-03-10','2014-03-10 18:44:17',1)
 ,(712,1,'2014-03-10','2014-03-10 18:44:22',1)
 ,(713,1,'2014-03-10','2014-03-10 18:44:31',1)
 ,(714,1,'2014-03-10','2014-03-10 18:44:44',1)
 ,(715,1,'2014-03-10','2014-03-10 18:44:45',1)
 ,(716,1,'2014-03-10','2014-03-10 18:44:51',1)
 ,(717,1,'2014-03-10','2014-03-10 18:44:54',1)
 ,(718,1,'2014-03-10','2014-03-10 18:44:55',1)
 ,(719,1,'2014-03-10','2014-03-10 18:45:24',1)
 ,(720,1,'2014-03-10','2014-03-10 18:45:25',1)
 ,(721,1,'2014-03-10','2014-03-10 18:45:31',1)
 ,(722,1,'2014-03-10','2014-03-10 18:46:02',1)
 ,(723,1,'2014-03-10','2014-03-10 18:46:06',1)
 ,(724,1,'2014-03-10','2014-03-10 18:46:19',1)
 ,(725,1,'2014-03-10','2014-03-10 18:46:31',1)
 ,(726,1,'2014-03-10','2014-03-10 18:46:48',1)
 ,(727,1,'2014-03-10','2014-03-10 18:48:18',1)
 ,(728,1,'2014-03-10','2014-03-10 18:48:19',1)
 ,(729,1,'2014-03-10','2014-03-10 18:48:28',1)
 ,(730,1,'2014-03-10','2014-03-10 18:48:29',1)
 ,(731,1,'2014-03-10','2014-03-10 18:48:40',1)
 ,(732,1,'2014-03-10','2014-03-10 18:48:48',1)
 ,(733,1,'2014-03-10','2014-03-10 18:48:52',1)
 ,(734,122,'2014-03-10','2014-03-10 18:48:54',1)
 ,(735,123,'2014-03-10','2014-03-10 18:48:58',1)
 ,(736,124,'2014-03-10','2014-03-10 18:48:59',1)
 ,(737,132,'2014-03-10','2014-03-10 18:49:00',1)
 ,(738,122,'2014-03-10','2014-03-10 18:49:02',1)
 ,(739,122,'2014-03-10','2014-03-10 18:49:05',1)
 ,(740,122,'2014-03-10','2014-03-10 18:50:07',1)
 ,(741,1,'2014-03-10','2014-03-10 18:50:49',1)
 ,(742,122,'2014-03-10','2014-03-10 18:50:51',1)
 ,(743,123,'2014-03-10','2014-03-10 18:50:57',1)
 ,(744,123,'2014-03-10','2014-03-10 18:51:01',1)
 ,(745,123,'2014-03-10','2014-03-10 18:51:03',1)
 ,(746,124,'2014-03-10','2014-03-10 18:51:06',1)
 ,(747,132,'2014-03-10','2014-03-10 18:51:08',1)
 ,(748,1,'2014-03-10','2014-03-10 18:51:12',1)
 ,(749,122,'2014-03-10','2014-03-10 18:51:17',1)
 ,(750,122,'2014-03-10','2014-03-10 18:51:22',1)
 ,(751,122,'2014-03-10','2014-03-10 18:51:32',1)
 ,(752,1,'2014-03-10','2014-03-10 18:51:34',1)
 ,(753,1,'2014-03-10','2014-03-10 18:51:38',1)
 ,(754,1,'2014-03-10','2014-03-10 18:52:01',1)
 ,(755,122,'2014-03-10','2014-03-10 18:52:06',1)
 ,(756,122,'2014-03-10','2014-03-10 18:52:39',1)
 ,(757,122,'2014-03-10','2014-03-10 18:55:47',1)
 ,(758,122,'2014-03-10','2014-03-10 18:55:56',1)
 ,(759,122,'2014-03-10','2014-03-10 18:57:02',1)
 ,(760,122,'2014-03-10','2014-03-10 18:57:08',1)
 ,(761,122,'2014-03-10','2014-03-10 18:59:01',1)
 ,(762,122,'2014-03-10','2014-03-10 18:59:07',1)
 ,(763,122,'2014-03-10','2014-03-10 19:02:18',1)
 ,(764,122,'2014-03-10','2014-03-10 19:02:23',1)
 ,(765,122,'2014-03-10','2014-03-10 19:02:24',1)
 ,(766,122,'2014-03-10','2014-03-10 19:02:24',1)
 ,(767,122,'2014-03-10','2014-03-10 19:02:33',1)
 ,(768,122,'2014-03-10','2014-03-10 19:02:37',1)
 ,(769,122,'2014-03-10','2014-03-10 19:02:42',1)
 ,(770,122,'2014-03-10','2014-03-10 19:02:46',1)
 ,(771,123,'2014-03-10','2014-03-10 19:02:52',1)
 ,(772,124,'2014-03-10','2014-03-10 19:02:55',1)
 ,(773,132,'2014-03-10','2014-03-10 19:02:57',1)
 ,(774,132,'2014-03-10','2014-03-10 19:03:25',1)
 ,(775,132,'2014-03-10','2014-03-10 19:04:06',1)
 ,(776,132,'2014-03-10','2014-03-10 19:04:28',1)
 ,(777,123,'2014-03-10','2014-03-10 19:05:03',1)
 ,(778,124,'2014-03-10','2014-03-10 19:05:05',1)
 ,(779,124,'2014-03-10','2014-03-10 19:05:15',1)
 ,(780,124,'2014-03-10','2014-03-10 19:05:19',1)
 ,(781,124,'2014-03-10','2014-03-10 19:05:24',1)
 ,(782,1,'2014-03-10','2014-03-10 19:05:27',1)
 ,(783,2,'2014-03-10','2014-03-10 19:22:24',1)
 ,(784,7,'2014-03-10','2014-03-10 19:22:27',1)
 ,(785,132,'2014-03-10','2014-03-10 19:27:32',1)
 ,(786,2,'2014-03-10','2014-03-10 19:27:38',1)
 ,(787,7,'2014-03-10','2014-03-10 19:27:40',1)
 ,(788,2,'2014-03-10','2014-03-10 19:27:55',1)
 ,(789,23,'2014-03-10','2014-03-10 19:28:03',1)
 ,(790,2,'2014-03-10','2014-03-10 19:28:05',1)
 ,(791,7,'2014-03-10','2014-03-10 19:29:03',1)
 ,(792,1,'2014-03-10','2014-03-10 20:26:27',1)
 ,(793,2,'2014-03-10','2014-03-10 20:26:38',1)
 ,(794,97,'2014-03-10','2014-03-10 20:27:01',1)
 ,(795,98,'2014-03-10','2014-03-10 20:27:02',1)
 ,(796,98,'2014-03-10','2014-03-10 20:27:26',1)
 ,(797,2,'2014-03-10','2014-03-10 20:29:01',1)
 ,(798,46,'2014-03-10','2014-03-10 20:30:14',1)
 ,(799,46,'2014-03-10','2014-03-10 20:30:17',1)
 ,(800,46,'2014-03-10','2014-03-10 20:30:18',1)
 ,(801,46,'2014-03-10','2014-03-10 20:30:26',1)
 ,(802,2,'2014-03-10','2014-03-10 20:30:36',1)
 ,(803,97,'2014-03-10','2014-03-10 20:30:53',1)
 ,(804,98,'2014-03-10','2014-03-10 20:30:53',1)
 ,(805,46,'2014-03-10','2014-03-10 20:31:09',1)
 ,(806,133,'2014-03-10','2014-03-10 20:32:01',1)
 ,(807,133,'2014-03-10','2014-03-10 20:38:36',1)
 ,(808,133,'2014-03-10','2014-03-10 20:39:00',1)
 ,(809,133,'2014-03-10','2014-03-10 20:39:03',1)
 ,(810,133,'2014-03-10','2014-03-10 20:39:18',1)
 ,(811,133,'2014-03-10','2014-03-10 20:42:36',1)
 ,(812,133,'2014-03-10','2014-03-10 20:43:31',1)
 ,(813,98,'2014-03-10','2014-03-10 20:45:27',1)
 ,(814,98,'2014-03-10','2014-03-10 20:45:30',1);

DROP TABLE IF EXISTS PageThemes;

CREATE TABLE IF NOT EXISTS `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO PageThemes VALUES(1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0)
 ,(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0)
 ,(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0)
 ,(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0)
 ,(7,'montheme','POLO360','Theme pour le cours d integration de la license RSC',0);

DROP TABLE IF EXISTS PageThemeStyles;

CREATE TABLE IF NOT EXISTS `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PageTypeAttributes;

CREATE TABLE IF NOT EXISTS `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PageTypes;

CREATE TABLE IF NOT EXISTS `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO PageTypes VALUES(1,'core_stack','main.png','Stack',1,0)
 ,(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0)
 ,(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0)
 ,(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0)
 ,(5,'footer','main.png','Footer',0,0)
 ,(6,'header','main.png','Header',0,0)
 ,(7,'accueil','template3.png','accueil',0,0)
 ,(8,'default','main.png','interne',0,0)
 ,(9,'accueil - Copie','main.png','Accueil   Copie',0,0)
 ,(10,'default - Copie','main.png','Default   Copie',0,0);

DROP TABLE IF EXISTS PageWorkflowProgress;

CREATE TABLE IF NOT EXISTS `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAccess;

CREATE TABLE IF NOT EXISTS `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccess VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,1)
 ,(5,1)
 ,(6,1)
 ,(7,1)
 ,(8,1)
 ,(9,1)
 ,(10,1)
 ,(11,1)
 ,(12,1)
 ,(13,1)
 ,(14,1)
 ,(15,1)
 ,(16,1)
 ,(17,1)
 ,(18,1)
 ,(19,1)
 ,(20,1)
 ,(21,1)
 ,(22,1)
 ,(23,1)
 ,(24,1)
 ,(25,1)
 ,(26,1)
 ,(27,1)
 ,(28,1)
 ,(29,1)
 ,(30,1)
 ,(31,1)
 ,(32,1)
 ,(33,1)
 ,(34,1)
 ,(35,1)
 ,(36,1)
 ,(37,1)
 ,(38,1)
 ,(39,1)
 ,(40,1)
 ,(41,1)
 ,(42,1)
 ,(43,1)
 ,(44,1)
 ,(45,1)
 ,(46,1)
 ,(47,1)
 ,(48,1)
 ,(49,1)
 ,(50,1)
 ,(51,1)
 ,(52,1)
 ,(53,1)
 ,(54,1)
 ,(55,1)
 ,(56,1)
 ,(57,1)
 ,(58,1)
 ,(59,1)
 ,(60,1)
 ,(61,1)
 ,(62,1)
 ,(63,1)
 ,(64,1)
 ,(65,1)
 ,(66,1)
 ,(67,1);

DROP TABLE IF EXISTS PermissionAccessEntities;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntities VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,5)
 ,(5,6);

DROP TABLE IF EXISTS PermissionAccessEntityGroups;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityGroups VALUES(1,1,3)
 ,(2,2,1)
 ,(3,3,2);

DROP TABLE IF EXISTS PermissionAccessEntityGroupSets;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAccessEntityTypeCategories;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityTypeCategories VALUES(1,1)
 ,(1,5)
 ,(1,6)
 ,(1,7)
 ,(1,8)
 ,(1,9)
 ,(1,10)
 ,(1,11)
 ,(1,12)
 ,(1,13)
 ,(1,14)
 ,(2,1)
 ,(2,5)
 ,(2,6)
 ,(2,7)
 ,(2,8)
 ,(2,9)
 ,(2,10)
 ,(2,11)
 ,(2,12)
 ,(2,13)
 ,(2,14)
 ,(3,1)
 ,(3,5)
 ,(3,6)
 ,(3,7)
 ,(3,8)
 ,(3,9)
 ,(3,10)
 ,(3,11)
 ,(3,12)
 ,(3,13)
 ,(3,14)
 ,(4,1)
 ,(4,5)
 ,(4,6)
 ,(4,7)
 ,(4,8)
 ,(4,9)
 ,(4,10)
 ,(4,11)
 ,(4,12)
 ,(4,13)
 ,(4,14)
 ,(5,1)
 ,(6,6)
 ,(6,7);

DROP TABLE IF EXISTS PermissionAccessEntityTypes;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityTypes VALUES(1,'group','Group',0)
 ,(2,'user','User',0)
 ,(3,'group_set','Group Set',0)
 ,(4,'group_combination','Group Combination',0)
 ,(5,'page_owner','Page Owner',0)
 ,(6,'file_uploader','File Uploader',0);

DROP TABLE IF EXISTS PermissionAccessEntityUsers;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAccessList;

CREATE TABLE IF NOT EXISTS `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessList VALUES(1,1,0,10)
 ,(2,1,0,10)
 ,(3,1,0,10)
 ,(4,1,0,10)
 ,(5,1,0,10)
 ,(6,1,0,10)
 ,(7,1,0,10)
 ,(8,1,0,10)
 ,(9,1,0,10)
 ,(10,1,0,10)
 ,(11,1,0,10)
 ,(12,1,0,10)
 ,(13,1,0,10)
 ,(14,1,0,10)
 ,(15,1,0,10)
 ,(16,1,0,10)
 ,(17,1,0,10)
 ,(18,1,0,10)
 ,(19,1,0,10)
 ,(20,1,0,10)
 ,(21,1,0,10)
 ,(22,1,0,10)
 ,(23,1,0,10)
 ,(24,1,0,10)
 ,(25,1,0,10)
 ,(26,1,0,10)
 ,(27,1,0,10)
 ,(28,1,0,10)
 ,(29,1,0,10)
 ,(30,1,0,10)
 ,(31,1,0,10)
 ,(32,1,0,10)
 ,(33,1,0,10)
 ,(34,2,0,10)
 ,(35,2,0,10)
 ,(36,2,0,10)
 ,(37,2,0,10)
 ,(38,2,0,10)
 ,(38,3,0,10)
 ,(39,2,0,10)
 ,(39,3,0,10)
 ,(40,2,0,10)
 ,(41,2,0,10)
 ,(42,2,0,10)
 ,(43,1,0,10)
 ,(43,2,0,10)
 ,(44,1,0,10)
 ,(45,1,0,10)
 ,(46,1,0,10)
 ,(47,1,0,10)
 ,(48,1,0,10)
 ,(49,1,0,10)
 ,(50,1,0,10)
 ,(51,1,0,10)
 ,(52,2,0,10)
 ,(53,1,0,10)
 ,(54,1,0,10)
 ,(55,1,0,10)
 ,(56,1,0,10)
 ,(57,1,0,10)
 ,(58,1,0,10)
 ,(59,1,0,10)
 ,(60,1,0,10)
 ,(61,1,0,10)
 ,(62,1,0,10)
 ,(63,1,0,10)
 ,(64,1,0,10)
 ,(65,1,0,10)
 ,(66,1,0,10)
 ,(67,1,0,10);

DROP TABLE IF EXISTS PermissionAccessWorkflows;

CREATE TABLE IF NOT EXISTS `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAssignments;

CREATE TABLE IF NOT EXISTS `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PermissionAssignments VALUES(1,17)
 ,(2,18)
 ,(3,55)
 ,(4,56)
 ,(5,57)
 ,(6,58)
 ,(7,60)
 ,(8,61)
 ,(9,62)
 ,(10,63)
 ,(11,64)
 ,(12,66)
 ,(13,67)
 ,(14,68)
 ,(15,69)
 ,(16,70)
 ,(17,71);

DROP TABLE IF EXISTS PermissionDurationObjects;

CREATE TABLE IF NOT EXISTS `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionKeyCategories;

CREATE TABLE IF NOT EXISTS `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO PermissionKeyCategories VALUES(1,'page',NULL)
 ,(2,'single_page',NULL)
 ,(3,'stack',NULL)
 ,(4,'composer_page',NULL)
 ,(5,'user',NULL)
 ,(6,'file_set',NULL)
 ,(7,'file',NULL)
 ,(8,'area',NULL)
 ,(9,'block_type',NULL)
 ,(10,'block',NULL)
 ,(11,'admin',NULL)
 ,(12,'sitemap',NULL)
 ,(13,'marketplace_newsflow',NULL)
 ,(14,'basic_workflow',NULL);

DROP TABLE IF EXISTS PermissionKeys;

CREATE TABLE IF NOT EXISTS `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

INSERT INTO PermissionKeys VALUES(1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0)
 ,(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0)
 ,(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0)
 ,(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0)
 ,(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0)
 ,(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block Areas and specific Blocks by clicking Permissions on them as well. ',1,0)
 ,(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0)
 ,(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0)
 ,(9,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0)
 ,(10,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0)
 ,(11,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0)
 ,(12,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0)
 ,(13,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0)
 ,(14,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0)
 ,(15,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0)
 ,(16,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0)
 ,(17,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add Blocks to any area (unless that area has permissions that override these global permissions.)',9,0)
 ,(18,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add Stacks to any area (unless that area has permissions that override these global permissions.)',9,0)
 ,(19,'view_area','View Area',0,0,'Can view the area and its contents.',8,0)
 ,(20,'edit_area_contents','Edit Area Contents',0,0,'Can edit Blocks within this area.',8,0)
 ,(21,'add_block_to_area','Add Block to Area',0,1,'Can add Blocks to this area. This setting overrides the global Add Block permission for this area.',8,0)
 ,(22,'add_stack_to_area','Add Stack to Area',0,0,'Can add Stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0)
 ,(23,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether Users get the ability to add Layouts to a particular area.',8,0)
 ,(24,'edit_area_design','Edit Area Design',0,0,'Controls whether Users see design controls and can modify an area\'s custom CSS.',8,0)
 ,(25,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether Users can access the permissions on an area. Custom area permissions could override those of the page.',8,0)
 ,(26,'delete_area_contents','Delete Area Contents',0,0,'Controls whether Users can delete Blocks from this area.',8,0)
 ,(27,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether Users can schedule guest access permissions on Blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0)
 ,(28,'view_block','View Block',0,0,'Controls whether Users can view this block in the page.',10,0)
 ,(29,'edit_block','Edit Block',0,0,'Controls whether Users can edit this block. This overrides any area or page permissions.',10,0)
 ,(30,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether Users can change the custom template on this block. This overrides any area or page permissions.',10,0)
 ,(31,'delete_block','Delete Block',0,0,'Controls whether Users can delete this block. This overrides any area or page permissions.',10,0)
 ,(32,'edit_block_design','Edit Design',0,0,'Controls whether Users can set custom design properties or CSS on this block.',10,0)
 ,(33,'edit_block_permissions','Edit Permissions',0,0,'Controls whether Users can change permissions on this block, potentially granting themselves or others greater access.',10,0)
 ,(34,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether Users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0)
 ,(35,'view_file_set_file','View Files',0,0,'Can view and download Files in the site.',6,0)
 ,(36,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0)
 ,(37,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0)
 ,(38,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace Files in set.',6,0)
 ,(39,'copy_file_set_files','Copy File',0,0,'Can copy Files in file set.',6,0)
 ,(40,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0)
 ,(41,'delete_file_set','Delete File Set',0,0,'',6,0)
 ,(42,'delete_file_set_files','Delete File',0,0,'Can delete Files in set.',6,0)
 ,(43,'add_file','Add File',0,1,'Can add Files to set.',6,0)
 ,(44,'view_file','View Files',0,0,'Can view and download files.',7,0)
 ,(45,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0)
 ,(46,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0)
 ,(47,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0)
 ,(48,'copy_file','Copy File',0,0,'Can copy file.',7,0)
 ,(49,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0)
 ,(50,'delete_file','Delete File',0,0,'Can delete file.',7,0)
 ,(51,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0)
 ,(52,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0)
 ,(53,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0)
 ,(54,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0)
 ,(55,'access_user_search','Access User Search',0,1,'',5,0)
 ,(56,'edit_user_properties','Edit User Details',0,1,NULL,5,0)
 ,(57,'view_user_attributes','View User Attributes',0,1,NULL,5,0)
 ,(58,'activate_user','Activate/Deactivate User',0,0,NULL,5,0)
 ,(59,'sudo','Sign in as User',0,0,NULL,5,0)
 ,(60,'delete_user','Delete User',0,0,NULL,5,0)
 ,(61,'access_group_search','Access Group Search',0,0,'',5,0)
 ,(62,'edit_groups','Edit Groups',0,0,'',5,0)
 ,(63,'assign_user_groups','Assign Groups to User',0,1,'',5,0)
 ,(64,'backup','Perform Backups',0,0,NULL,11,0)
 ,(65,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0)
 ,(66,'access_sitemap','Access Sitemap',0,0,NULL,12,0)
 ,(67,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0)
 ,(68,'empty_trash','Empty Trash',0,0,NULL,11,0)
 ,(69,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0)
 ,(70,'install_packages','Install Packages',0,0,NULL,13,0)
 ,(71,'view_newsflow','View Newsflow',0,0,NULL,13,0);

DROP TABLE IF EXISTS PileContents;

CREATE TABLE IF NOT EXISTS `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO PileContents VALUES(1,1,16,'BLOCK',1,'2014-01-27 13:31:37',1)
 ,(2,1,45,'BLOCK',1,'2014-03-10 11:37:06',2)
 ,(3,1,57,'BLOCK',1,'2014-03-10 14:21:10',3)
 ,(4,1,86,'BLOCK',1,'2014-03-10 18:59:42',4);

DROP TABLE IF EXISTS Piles;

CREATE TABLE IF NOT EXISTS `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Piles VALUES(1,1,1,'2014-01-21 14:57:50',NULL,'READY');

DROP TABLE IF EXISTS QueueMessages;

CREATE TABLE IF NOT EXISTS `QueueMessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` varchar(8192) NOT NULL,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS QueuePageDuplicationRelations;

CREATE TABLE IF NOT EXISTS `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Queues;

CREATE TABLE IF NOT EXISTS `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS SignupRequests;

CREATE TABLE IF NOT EXISTS `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Stacks;

CREATE TABLE IF NOT EXISTS `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS SystemAntispamLibraries;

CREATE TABLE IF NOT EXISTS `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS SystemCaptchaLibraries;

CREATE TABLE IF NOT EXISTS `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO SystemCaptchaLibraries VALUES('securimage','SecurImage (Default)',1,0);

DROP TABLE IF EXISTS SystemNotifications;

CREATE TABLE IF NOT EXISTS `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserAttributeKeys;

CREATE TABLE IF NOT EXISTS `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO UserAttributeKeys VALUES(10,0,0,1,0,1,0,1,1)
 ,(11,0,0,1,0,1,0,2,1);

DROP TABLE IF EXISTS UserAttributeValues;

CREATE TABLE IF NOT EXISTS `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserBannedIPs;

CREATE TABLE IF NOT EXISTS `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserGroups;

CREATE TABLE IF NOT EXISTS `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserOpenIDs;

CREATE TABLE IF NOT EXISTS `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionAssignGroupAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionAssignGroupAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionEditPropertyAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionEditPropertyAttributeAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionUserSearchAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionUserSearchAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionViewAttributeAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionViewAttributeAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPointHistory;

CREATE TABLE IF NOT EXISTS `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPrivateMessages;

CREATE TABLE IF NOT EXISTS `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPrivateMessagesTo;

CREATE TABLE IF NOT EXISTS `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Users VALUES(1,'admin','radioactive.burger@gmail.com','0622657b59a03308eb880a81df0b1133','1',-1,1,'2014-01-21 13:13:56',0,1394480727,1394473084,0,1394473014,11,NULL,NULL);

DROP TABLE IF EXISTS UserSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UsersFriends;

CREATE TABLE IF NOT EXISTS `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserValidationHashes;

CREATE TABLE IF NOT EXISTS `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS WorkflowProgress;

CREATE TABLE IF NOT EXISTS `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS WorkflowProgressCategories;

CREATE TABLE IF NOT EXISTS `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO WorkflowProgressCategories VALUES(1,'page',NULL)
 ,(2,'file',NULL)
 ,(3,'user',NULL);

DROP TABLE IF EXISTS WorkflowProgressHistory;

CREATE TABLE IF NOT EXISTS `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

INSERT INTO WorkflowProgressHistory VALUES(1,1,'2014-01-21 15:24:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}')
 ,(2,2,'2014-01-21 15:31:29','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}')
 ,(3,3,'2014-01-21 16:12:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}')
 ,(4,4,'2014-01-21 16:12:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"4\";}')
 ,(5,5,'2014-01-21 16:13:10','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"124\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"5\";}')
 ,(6,1,'2014-01-27 13:29:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"1\";}')
 ,(7,2,'2014-01-27 13:31:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"2\";}')
 ,(8,1,'2014-02-18 15:44:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"1\";}')
 ,(9,2,'2014-02-18 15:52:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"2\";}')
 ,(10,1,'2014-03-10 11:29:20','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"1\";}')
 ,(11,2,'2014-03-10 11:30:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"2\";}')
 ,(12,3,'2014-03-10 11:34:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"3\";}')
 ,(13,4,'2014-03-10 11:38:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"4\";}')
 ,(14,5,'2014-03-10 12:29:04','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:1:\"5\";}')
 ,(15,6,'2014-03-10 13:18:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:1:\"6\";}')
 ,(16,7,'2014-03-10 13:18:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"7\";}')
 ,(17,8,'2014-03-10 13:21:41','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:1:\"8\";}')
 ,(18,9,'2014-03-10 13:34:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:1:\"9\";}')
 ,(19,10,'2014-03-10 13:34:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"10\";}')
 ,(20,11,'2014-03-10 13:37:48','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"11\";}')
 ,(21,12,'2014-03-10 13:42:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"12\";}')
 ,(22,13,'2014-03-10 13:42:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"13\";}')
 ,(23,14,'2014-03-10 13:49:38','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"14\";}')
 ,(24,15,'2014-03-10 13:50:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"15\";}')
 ,(25,16,'2014-03-10 13:58:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"16\";}')
 ,(26,17,'2014-03-10 14:05:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"17\";}')
 ,(27,18,'2014-03-10 14:05:59','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"18\";}')
 ,(28,19,'2014-03-10 14:06:20','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"19\";}')
 ,(29,20,'2014-03-10 14:08:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"20\";}')
 ,(30,21,'2014-03-10 14:09:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"21\";}')
 ,(31,22,'2014-03-10 14:09:50','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"22\";}')
 ,(32,23,'2014-03-10 14:10:49','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"125\";s:4:\"wrID\";s:2:\"23\";}')
 ,(33,24,'2014-03-10 14:16:14','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"24\";}')
 ,(34,25,'2014-03-10 14:18:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"25\";}')
 ,(35,26,'2014-03-10 14:23:10','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"26\";}')
 ,(36,27,'2014-03-10 14:35:08','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"27\";}')
 ,(37,28,'2014-03-10 14:46:02','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"28\";}')
 ,(38,29,'2014-03-10 14:51:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:2:\"29\";}')
 ,(39,30,'2014-03-10 15:18:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"30\";}')
 ,(40,31,'2014-03-10 15:18:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"31\";}')
 ,(41,32,'2014-03-10 15:32:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"32\";}')
 ,(42,33,'2014-03-10 15:35:20','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"33\";}')
 ,(43,34,'2014-03-10 15:44:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"34\";}')
 ,(44,35,'2014-03-10 15:44:41','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"35\";}')
 ,(45,36,'2014-03-10 15:46:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"36\";}')
 ,(46,37,'2014-03-10 15:47:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"37\";}')
 ,(47,38,'2014-03-10 15:48:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"38\";}')
 ,(48,39,'2014-03-10 18:22:25','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"39\";}')
 ,(49,40,'2014-03-10 18:24:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"124\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"40\";}')
 ,(50,41,'2014-03-10 18:48:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:2:\"41\";}')
 ,(51,42,'2014-03-10 18:50:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"42\";}')
 ,(52,43,'2014-03-10 18:55:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"43\";}')
 ,(53,44,'2014-03-10 18:57:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"44\";}')
 ,(54,45,'2014-03-10 18:59:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"45\";}')
 ,(55,46,'2014-03-10 19:02:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"122\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"46\";}')
 ,(56,47,'2014-03-10 19:04:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"47\";}')
 ,(57,48,'2014-03-10 19:23:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"32\";s:4:\"wrID\";s:2:\"48\";}')
 ,(58,49,'2014-03-10 19:27:52','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"33\";s:4:\"wrID\";s:2:\"49\";}');

DROP TABLE IF EXISTS WorkflowRequestObjects;

CREATE TABLE IF NOT EXISTS `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Workflows;

CREATE TABLE IF NOT EXISTS `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS WorkflowTypes;

CREATE TABLE IF NOT EXISTS `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO WorkflowTypes VALUES(1,'basic','Basic Workflow',0);

