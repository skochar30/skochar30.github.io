drop database if exists petpals;
create database petpals;
use petpals;

drop table if exists `ER_INFO`;
CREATE TABLE ER_INFO
(Hospital_Name varchar(300),
				Address varchar(300),
				Contact_Number varchar(300),
				Website varchar(300),
				latitude varchar(300),
				longitude varchar(300),
				insurance varchar(300),		
				Number_of_Beds varchar(300),
				ER_availability varchar(300),
				City varchar(300)
);

INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds,ER_availability,City) VALUES ('The Big Easy Animal Hospital', '12 McCandless Ave Suite A, Pittsburgh, PA 15201', '(412) 908-9301', 'https://tbeah.com/', '40.48328', '-79.95551', 'NA', '6', 'Yes', 'Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('Pittsburgh Veterinary Specialty and Emergency Center', '807 Camp Horne Rd, Pittsburgh, PA 15237', '(412) 366-3400', 'https://bluepearlvet.com/hospital/pittsburgh-north-hills-pa/?utm_source=semrush&utm_medium=organic&utm_campaign=online_listings', '40.52328', '-80.07509', 'NA', '5', 'Yes','Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('AVETS', '2674 Monroeville Blvd, Monroeville, PA 15146', '(412) 373-4200', 'https://www.avets.com/', '40.43501', '-79.78271', 'Accepted', '5', 'Yes', 'Monroeville');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('VCA Castle Shannon Animal Hospital', '3610 Library Rd, Pittsburgh, PA 15234', '(412) 885-2500', 'https://vcahospitals.com/castle-shannon?utm_source=maps&utm_medium=organic&utm_campaign=VCA_Castle_Shannon_Animal_Hospital', '40.36533', '-80.01827', 'Accepted', '8', 'Yes','Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('Penn Animal Hospital', '2205 Penn Ave, Pittsburgh, PA 15222', '(412) 471-9855', 'NA', '40.452529', '-79.982282', 'NA', '4', 'Yes', 'Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('Point Breeze Veterinary Clinic', '6742 Reynolds St, Pittsburgh, PA 15206', '412-665-1810', 'https://www.pointbreezevet.com/', '40.450207', '-79.914306', 'NA', '4', 'No', 'Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('Greenfield Veterinary Hospital', '701 Hazelwood Ave, Pittsburgh, PA 15217', '(412) 422-7755', 'https://www.greenfieldvethospital.net/', '40.420015', '-79.932851', 'Accepted', '6', 'No', 'Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('MedVet', '2810 WASHINGTON RD. MCMURRAY, PA 15317', '724-717-2273', 'https://www.medvetforpets.com/location/medvet-pittsburgh/', '40.305263', '-80.096418', 'Accepted', '6', 'Yes','Mcmurray');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('City Vets', '79 S 23rd St, Pittsburgh, PA 15203', '(412) 483-1700', 'https://mycityvets.com/', '40.429049', '-79.972796', 'Accepted', '5', 'No','Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('Banfield Pet Hospital', '6401 Penn Ave Ste 250, Pittsburgh, PA 15206', '14123620534', 'banfield.com', '40.45848', '-79.917', '', '4', 'No','Pittsburgh');
INSERT INTO ER_INFO(Hospital_Name, Address, Contact_Number, Website, latitude, longitude, insurance, Number_of_Beds, ER_availability,City) VALUES ('Munhall Veterinary Hospital', '2114 West St, Homestead, PA 15120', '14124641965', 'http://munhallvet.com/', '40.39736', '-79.90298', 'Accepted', '7', 'No','Homestead');