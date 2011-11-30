-- update demographics table - assumes that pps-demographics.sql has
-- been run without containing district table

CREATE TABLE demographics_district (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       district VARCHAR(64) NOT NULL,
       ordernum INT NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE demographics_incident DROP COLUMN postnumber;
ALTER TABLE demographics_incident ADD COLUMN district_id INT;
ALTER TABLE demographics_incident ADD KEY district_id (district_id);

INSERT INTO demographics_district (id, district, ordernum) VALUES
(1, 'Majorna-Linné', 10),
(2, 'Askim-Frölunda-Högsbo', 20),
(3, 'VästraGöteborg', 30),
(4, 'VästraHisingen', 40),
(5, 'NorraHisingen', 50),
(6, 'Angered', 60),
(7, 'ÖstraGöteborg', 70),
(8, 'Örgryte-Härlanda', 80),
(9, 'Centrum', 90),
(10, 'Lundby', 100);
