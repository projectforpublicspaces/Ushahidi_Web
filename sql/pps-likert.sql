-- create tables for likert scale questions

CREATE TABLE likert_response (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       response VARCHAR(32) NOT NULL,
       ordernum INT NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE likert_question (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       question VARCHAR(256) NOT NULL,
       ordernum INT NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE likert_incident_response (
       id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       incident_id INT NOT NULL,
       likert_question_id INT NOT NULL,
       likert_response_id INT NOT NULL,
       KEY incident_id (incident_id),
       KEY likert_question_id (likert_question_id),
       KEY likert_response_id (likert_response_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO likert_response (id, response, ordernum) VALUES
(1, 'Strongly Disagree', 10),
(2, 'Disagree', 20),
(3, 'Neither Agree nor Disagree', 30),
(4, 'Agree', 40),
(5, 'Strongly Agree', 50);

INSERT INTO likert_question (id, question, ordernum) VALUES
(1, 'A natural meeting point?', 10),
(2, 'Do you feel safe here at night time?', 20),
(3, 'A place you love to spend a lot of time at?', 30),
(4, 'A place that is attractive for small children (0-6)', 40),
(5, 'Easy to reach for you as a pedestrian?', 50);
