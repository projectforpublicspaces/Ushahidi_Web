-- create tables for demographic questions

CREATE TABLE demographics_age (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       age_range VARCHAR(16),
       ordernum INT NOT NULL,
       KEY ordernum (ordernum)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE demographics_incident (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       incident_id INT NOT NULL,
       age_id INT,
       male BOOLEAN,
       postnumber VARCHAR(255),
       KEY incident_id (incident_id),
       KEY age_id (age_id),
       KEY male (male)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO demographics_age (id, age_range, ordernum) VALUES
(1, '7-14', 10),
(2, '15-18', 20),
(3, '19-40', 30),
(4, '41-60', 40),
(5, '60-', 50);
