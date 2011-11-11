-- add additional person columns to incident_person table

ALTER TABLE `incident_person`
add `person_neighborhood` varchar(255),
add `person_connect_link` varchar(255);
