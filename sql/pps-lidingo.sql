-- create tables for demographic questions

SET NAMES utf8;

CREATE TABLE lidingo_question (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       incident_id INT NOT NULL,
       beratta text NOT NULL,
       detta text NOT NULL,
       KEY incident_id (incident_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
