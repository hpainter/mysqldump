# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: date_types
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `date_types` (
  `dt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_date` date NOT NULL,
  `_datetime` datetime NOT NULL,
  `_time` time NOT NULL,
  `_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_year` year(4) NOT NULL,
  PRIMARY KEY (`dt_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: everything
# ------------------------------------------------------------

CREATE OR REPLACE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `everything` AS
select
  `dt`.`dt_id` AS `dt_id`,
  `dt`.`_date` AS `_date`,
  `dt`.`_datetime` AS `_datetime`,
  `dt`.`_time` AS `_time`,
  `dt`.`_timestamp` AS `_timestamp`,
  `dt`.`_year` AS `_year`,
  `gt`.`gt_id` AS `gt_id`,
  `gt`.`_point` AS `_point`,
  `gt`.`_linestring` AS `_linestring`,
  `gt`.`_polygon` AS `_polygon`,
  `gt`.`_multipoint` AS `_multipoint`,
  `gt`.`_multilinestring` AS `_multilinestring`,
  `gt`.`_multipolygon` AS `_multipolygon`,
  `gt`.`_geometrycollection` AS `_geometrycollection`,
  `nt`.`nt_id` AS `nt_id`,
  `nt`.`_uint` AS `_uint`,
  `nt`.`_int` AS `_int`,
  `nt`.`_tinyint` AS `_tinyint`,
  `nt`.`_smallint` AS `_smallint`,
  `nt`.`_mediumint` AS `_mediumint`,
  `nt`.`_bigint` AS `_bigint`,
  `nt`.`_decimal` AS `_decimal`,
  `nt`.`_double` AS `_double`,
  `nt`.`_float` AS `_float`,
  `nt`.`_real` AS `_real`,
  `nt`.`_bit1` AS `_bit1`,
  `nt`.`_bit24` AS `_bit24`,
  `ot`.`ot_id` AS `ot_id`,
  `ot`.`_blob` AS `_blob`,
  `ot`.`_binary` AS `_binary`,
  `ot`.`_varbinary` AS `_varbinary`,
  `ot`.`_enum` AS `_enum`,
  `ot`.`_set` AS `_set`,
  `ot`.`_alwaysNull` AS `_alwaysNull`
from
  (
    (
      (
        `date_types` `dt`
        join `geometry_types` `gt` on((`dt`.`dt_id` = `gt`.`gt_id`))
      )
      join `number_types` `nt` on((`dt`.`dt_id` = `nt`.`nt_id`))
    )
    join `other_types` `ot` on((`dt`.`dt_id` = `ot`.`ot_id`))
  );


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: geometry_types
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `geometry_types` (
  `gt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_point` point NOT NULL,
  `_linestring` linestring NOT NULL,
  `_polygon` polygon NOT NULL,
  `_multipoint` multipoint NOT NULL,
  `_multilinestring` multilinestring NOT NULL,
  `_multipolygon` multipolygon NOT NULL,
  `_geometrycollection` geometrycollection NOT NULL,
  PRIMARY KEY (`gt_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: number_types
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `number_types` (
  `nt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uint` int(10) unsigned NOT NULL,
  `_int` int(11) NOT NULL,
  `_tinyint` tinyint(4) NOT NULL,
  `_smallint` smallint(6) NOT NULL,
  `_mediumint` mediumint(9) NOT NULL,
  `_bigint` bigint(20) NOT NULL,
  `_decimal` decimal(6, 2) NOT NULL,
  `_double` double NOT NULL,
  `_float` float NOT NULL,
  `_real` double NOT NULL,
  `_bit1` bit(1) NOT NULL,
  `_bit24` bit(24) NOT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: other_types
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `other_types` (
  `ot_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_blob` blob NOT NULL,
  `_binary` binary(1) NOT NULL,
  `_varbinary` varbinary(64) NOT NULL,
  `_enum` enum('red', 'green', 'blue') NOT NULL,
  `_set`
  set('a', 'b', 'c') NOT NULL,
    `_alwaysNull` int(11) DEFAULT NULL,
    PRIMARY KEY (`ot_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: text_types
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `text_types` (
  `ot_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_char` char(1) NOT NULL,
  `_longtext` longtext NOT NULL,
  `_text` text NOT NULL,
  `_varchar` varchar(128) NOT NULL,
  PRIMARY KEY (`ot_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;


INSERT INTO
  `date_types` (
    `dt_id`,
    `_date`,
    `_datetime`,
    `_time`,
    `_timestamp`,
    `_year`
  )
VALUES
  (
    1,
    '2017-01-03',
    '2017-02-02 12:34:56',
    '21:43:56',
    '2017-03-01 15:53:16',
    '2111'
  );
INSERT INTO
  `date_types` (
    `dt_id`,
    `_date`,
    `_datetime`,
    `_time`,
    `_timestamp`,
    `_year`
  )
VALUES
  (
    2,
    '2017-04-13',
    '2017-05-22 22:33:44',
    '10:11:12',
    '2017-06-30 09:10:11',
    '1970'
  );
INSERT INTO
  `date_types` (
    `dt_id`,
    `_date`,
    `_datetime`,
    `_time`,
    `_timestamp`,
    `_year`
  )
VALUES
  (
    3,
    '2017-07-23',
    '2017-08-22 01:02:03',
    '04:05:06',
    '2017-09-21 13:41:51',
    '1901'
  );
INSERT INTO
  `geometry_types` (
    `gt_id`,
    `_point`,
    `_linestring`,
    `_polygon`,
    `_multipoint`,
    `_multilinestring`,
    `_multipolygon`,
    `_geometrycollection`
  )
VALUES
  (
    1,
    GeomFromText('POINT(1 2)'),
    GeomFromText('LINESTRING(0 1,2 3,4 5)'),
    GeomFromText(
      'POLYGON((0 1,2 3,4 5,6 7,8 9,0 1),(10 11,12 13,14 15,16 17,18 19,10 11))'
    ),
    GeomFromText('MULTIPOINT(0 1,2 3,4 5)'),
    GeomFromText('MULTILINESTRING((0 1,2 3,4 5),(6 7,8 9,10 11))'),
    GeomFromText(
      'MULTIPOLYGON(((0 1,2 3,4 5,6 7,8 9,0 1),(10 11,12 13,14 15,16 17,18 19,10 11)),((40 41,42 43,44 45,46 47,48 49,40 41),(50 51,52 53,54 55,56 57,58 59,50 51)))'
    ),
    GeomFromText(
      'GEOMETRYCOLLECTION(POINT(1 2),LINESTRING(0 1,2 3,4 5),MULTIPOLYGON(((0 1,2 3,4 5,6 7,8 9,0 1),(10 11,12 13,14 15,16 17,18 19,10 11)),((40 41,42 43,44 45,46 47,48 49,40 41),(50 51,52 53,54 55,56 57,58 59,50 51))))'
    )
  );
INSERT INTO
  `geometry_types` (
    `gt_id`,
    `_point`,
    `_linestring`,
    `_polygon`,
    `_multipoint`,
    `_multilinestring`,
    `_multipolygon`,
    `_geometrycollection`
  )
VALUES
  (
    2,
    GeomFromText('POINT(3 4)'),
    GeomFromText('LINESTRING(6 7,8 9,10 11)'),
    GeomFromText(
      'POLYGON((20 21,22 23,24 25,26 27,28 29,20 21),(30 31,32 33,34 35,36 37,38 39,30 31))'
    ),
    GeomFromText('MULTIPOINT(6 7,8 9,10 11)'),
    GeomFromText(
      'MULTILINESTRING((12 13,14 15,16 17),(18 19,20 21,22 23))'
    ),
    GeomFromText(
      'MULTIPOLYGON(((20 21,22 23,24 25,26 27,28 29,20 21),(30 31,32 33,34 35,36 37,38 39,30 31)),((0 1,2 3,4 5,6 7,8 9,0 1),(10 11,12 13,14 15,16 17,18 19,10 11)))'
    ),
    GeomFromText(
      'GEOMETRYCOLLECTION(POINT(3 4),LINESTRING(6 7,8 9,10 11),MULTIPOLYGON(((20 21,22 23,24 25,26 27,28 29,20 21),(30 31,32 33,34 35,36 37,38 39,30 31)),((0 1,2 3,4 5,6 7,8 9,0 1),(10 11,12 13,14 15,16 17,18 19,10 11))))'
    )
  );
INSERT INTO
  `geometry_types` (
    `gt_id`,
    `_point`,
    `_linestring`,
    `_polygon`,
    `_multipoint`,
    `_multilinestring`,
    `_multipolygon`,
    `_geometrycollection`
  )
VALUES
  (
    3,
    GeomFromText('POINT(5 6)'),
    GeomFromText('LINESTRING(12 13,14 15,16 17)'),
    GeomFromText(
      'POLYGON((40 41,42 43,44 45,46 47,48 49,40 41),(50 51,52 53,54 55,56 57,58 59,50 51))'
    ),
    GeomFromText('MULTIPOINT(12 13,14 15,16 17)'),
    GeomFromText(
      'MULTILINESTRING((24 25,26 27,28 29),(30 31,32 33,34 35))'
    ),
    GeomFromText(
      'MULTIPOLYGON(((40 41,42 43,44 45,46 47,48 49,40 41),(50 51,52 53,54 55,56 57,58 59,50 51)),((20 21,22 23,24 25,26 27,28 29,20 21),(30 31,32 33,34 35,36 37,38 39,30 31)))'
    ),
    GeomFromText(
      'GEOMETRYCOLLECTION(POINT(5 6),LINESTRING(12 13,14 15,16 17),MULTIPOLYGON(((40 41,42 43,44 45,46 47,48 49,40 41),(50 51,52 53,54 55,56 57,58 59,50 51)),((20 21,22 23,24 25,26 27,28 29,20 21),(30 31,32 33,34 35,36 37,38 39,30 31))))'
    )
  );
INSERT INTO
  `number_types` (
    `nt_id`,
    `_uint`,
    `_int`,
    `_tinyint`,
    `_smallint`,
    `_mediumint`,
    `_bigint`,
    `_decimal`,
    `_double`,
    `_float`,
    `_real`,
    `_bit1`,
    `_bit24`
  )
VALUES
  (
    1,
    1,
    2,
    3,
    4,
    5,
    6,
    7.10,
    8.2,
    9.3,
    10.4,
    b'1',
    b'101010101010101010101010'
  );
INSERT INTO
  `number_types` (
    `nt_id`,
    `_uint`,
    `_int`,
    `_tinyint`,
    `_smallint`,
    `_mediumint`,
    `_bigint`,
    `_decimal`,
    `_double`,
    `_float`,
    `_real`,
    `_bit1`,
    `_bit24`
  )
VALUES
  (
    2,
    11,
    12,
    13,
    14,
    15,
    16,
    17.10,
    18.2,
    19.3,
    20.4,
    b'0',
    b'010101010101010101010101'
  );
INSERT INTO
  `number_types` (
    `nt_id`,
    `_uint`,
    `_int`,
    `_tinyint`,
    `_smallint`,
    `_mediumint`,
    `_bigint`,
    `_decimal`,
    `_double`,
    `_float`,
    `_real`,
    `_bit1`,
    `_bit24`
  )
VALUES
  (
    3,
    21,
    22,
    23,
    24,
    25,
    26,
    27.10,
    28.2,
    29.3,
    30.4,
    b'1',
    b'111111111111000000000000'
  );
INSERT INTO
  `other_types` (
    `ot_id`,
    `_blob`,
    `_binary`,
    `_varbinary`,
    `_enum`,
    `_set`,
    `_alwaysNull`
  )
VALUES
  (
    1,
    X'1234',
    X'aa',
    X'9876',
    'red',
    'a',
    NULL
  );
INSERT INTO
  `other_types` (
    `ot_id`,
    `_blob`,
    `_binary`,
    `_varbinary`,
    `_enum`,
    `_set`,
    `_alwaysNull`
  )
VALUES
  (
    2,
    X'4567',
    X'bb',
    X'6543',
    'green',
    'b',
    NULL
  );
INSERT INTO
  `other_types` (
    `ot_id`,
    `_blob`,
    `_binary`,
    `_varbinary`,
    `_enum`,
    `_set`,
    `_alwaysNull`
  )
VALUES
  (
    3,
    X'7890',
    X'cc',
    X'3210',
    'blue',
    'c',
    NULL
  );
INSERT INTO
  `text_types` (`ot_id`, `_char`, `_longtext`, `_text`, `_varchar`)
VALUES
  (
    1,
    'a',
    '{ \"this is how\": \"ONE ONE ONE ONE\" }',
    '\"SOME LONG TEXT GOES HERE 1\"',
    'string 1'
  );
INSERT INTO
  `text_types` (`ot_id`, `_char`, `_longtext`, `_text`, `_varchar`)
VALUES
  (
    2,
    'b',
    '{ \"this is how\": \"TWO TWO TWO TWO\" }',
    '\"SOME LONG TEXT GOES HERE 2\"',
    'string 2'
  );
INSERT INTO
  `text_types` (`ot_id`, `_char`, `_longtext`, `_text`, `_varchar`)
VALUES
  (
    3,
    'c',
    '{ \"this is how\": \"THREE THREE THREE THREE\" }',
    '\"SOME LONG TEXT GOES HERE 3\"',
    'string 3'
  );