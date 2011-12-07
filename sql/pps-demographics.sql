-- create tables for demographic questions

SET NAMES utf8;

CREATE TABLE demographics_age (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       age_range VARCHAR(16),
       ordernum INT NOT NULL,
       KEY ordernum (ordernum)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE demographics_district (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       district VARCHAR(64) NOT NULL,
       ordernum INT NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE demographics_incident (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       incident_id INT NOT NULL,
       age_id INT,
       male BOOLEAN,
       district_id INT,
       KEY incident_id (incident_id),
       KEY age_id (age_id),
       KEY male (male),
       KEY district_id (district_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO demographics_age (id, age_range, ordernum) VALUES
(1, '7-14', 10),
(2, '15-18', 20),
(3, '19-40', 30),
(4, '41-60', 40),
(5, '60-', 50);

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
(10, 'Lundby', 100),
(11, 'Utanför Göteborg', 110);
