BEGIN
  SPCLEARSCHEMA();
END;
/
INSERT INTO TEST.Prescription (PrescriptionId, PrescriptionType, Status, Language, CreatedOn, DeliverableAt, PrescriberId, PrescriberType, PrescriberLastName, PrescriberFirstName, PrescriberDisplayName, PrescriberLicenseNum, PrescriberSSN, PrescriberSpeciality, PrescriberPhone1, PrescriberPhone2, PrescriberEmail1, PrescriberEmail2, PrescriberWebSite, PrescriberStreet, PrescriberHouseNum, PrescriberBoxNum, PrescriberPostCode, PrescriberCity, PrescriberCountry, PatientId, PatientFirstName, PatientLastName, PatientSex, PatientSSN, PatientBirthdate, EncounterId) VALUES (1, N'PHARM', N'CRT', N'FR', TO_DATE(N'2016-12-18','YYYY-MM-DD'), NULL, 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, TO_DATE(N'1940-12-12','YYYY-MM-DD'), 1)
/																																																																																																																																									 
INSERT INTO TEST.Prescription (PrescriptionId, PrescriptionType, Status, Language, CreatedOn, DeliverableAt, PrescriberId, PrescriberType, PrescriberLastName, PrescriberFirstName, PrescriberDisplayName, PrescriberLicenseNum, PrescriberSSN, PrescriberSpeciality, PrescriberPhone1, PrescriberPhone2, PrescriberEmail1, PrescriberEmail2, PrescriberWebSite, PrescriberStreet, PrescriberHouseNum, PrescriberBoxNum, PrescriberPostCode, PrescriberCity, PrescriberCountry, PatientId, PatientFirstName, PatientLastName, PatientSex, PatientSSN, PatientBirthdate, EncounterId) VALUES (2, N'PHARM', N'CRT', N'FR', TO_DATE(N'2016-12-18','YYYY-MM-DD'), TO_DATE(N'2017-02-18','YYYY-MM-DD'), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, TO_DATE(N'1940-12-12','YYYY-MM-DD'), NULL)
/																																																																																																																																									  
INSERT INTO TEST.Prescription (PrescriptionId, PrescriptionType, Status, Language, CreatedOn, DeliverableAt, PrescriberId, PrescriberType, PrescriberLastName, PrescriberFirstName, PrescriberDisplayName, PrescriberLicenseNum, PrescriberSSN, PrescriberSpeciality, PrescriberPhone1, PrescriberPhone2, PrescriberEmail1, PrescriberEmail2, PrescriberWebSite, PrescriberStreet, PrescriberHouseNum, PrescriberBoxNum, PrescriberPostCode, PrescriberCity, PrescriberCountry, PatientId, PatientFirstName, PatientLastName, PatientSex, PatientSSN, PatientBirthdate, EncounterId) VALUES (3, N'PHARM', N'CRT', N'FR', TO_DATE(N'2016-12-18','YYYY-MM-DD'), TO_DATE(N'2017-03-18','YYYY-MM-DD'), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, TO_DATE(N'1940-12-12','YYYY-MM-DD'), NULL)
/																																																																																																																																									  
INSERT INTO TEST.Prescription (PrescriptionId, PrescriptionType, Status, Language, CreatedOn, DeliverableAt, PrescriberId, PrescriberType, PrescriberLastName, PrescriberFirstName, PrescriberDisplayName, PrescriberLicenseNum, PrescriberSSN, PrescriberSpeciality, PrescriberPhone1, PrescriberPhone2, PrescriberEmail1, PrescriberEmail2, PrescriberWebSite, PrescriberStreet, PrescriberHouseNum, PrescriberBoxNum, PrescriberPostCode, PrescriberCity, PrescriberCountry, PatientId, PatientFirstName, PatientLastName, PatientSex, PatientSSN, PatientBirthdate, EncounterId) VALUES (4, N'PHARM', N'CRT', N'FR', TO_DATE(N'2016-12-18','YYYY-MM-DD'), TO_DATE(N'2017-04-18','YYYY-MM-DD'), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, TO_DATE(N'1940-12-12','YYYY-MM-DD'), NULL)
/																																																																																																																																									  
INSERT INTO TEST.Prescription (PrescriptionId, PrescriptionType, Status, Language, CreatedOn, DeliverableAt, PrescriberId, PrescriberType, PrescriberLastName, PrescriberFirstName, PrescriberDisplayName, PrescriberLicenseNum, PrescriberSSN, PrescriberSpeciality, PrescriberPhone1, PrescriberPhone2, PrescriberEmail1, PrescriberEmail2, PrescriberWebSite, PrescriberStreet, PrescriberHouseNum, PrescriberBoxNum, PrescriberPostCode, PrescriberCity, PrescriberCountry, PatientId, PatientFirstName, PatientLastName, PatientSex, PatientSSN, PatientBirthdate, EncounterId) VALUES (5, N'PHARM', N'CRT', N'FR', TO_DATE(N'2017-09-25','YYYY-MM-DD'), NULL, 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 14314, N'Blanche', N'Neige', N'F', N'54071102651', TO_DATE(N'1954-07-11','YYYY-MM-DD'), NULL)
/																																																																																																																																									 
INSERT INTO TEST.Prescription (PrescriptionId, PrescriptionType, Status, Language, CreatedOn, DeliverableAt, PrescriberId, PrescriberType, PrescriberLastName, PrescriberFirstName, PrescriberDisplayName, PrescriberLicenseNum, PrescriberSSN, PrescriberSpeciality, PrescriberPhone1, PrescriberPhone2, PrescriberEmail1, PrescriberEmail2, PrescriberWebSite, PrescriberStreet, PrescriberHouseNum, PrescriberBoxNum, PrescriberPostCode, PrescriberCity, PrescriberCountry, PatientId, PatientFirstName, PatientLastName, PatientSex, PatientSSN, PatientBirthdate, EncounterId) VALUES (6, N'PHARM', N'CRT', N'FR', TO_DATE(N'2017-09-25','YYYY-MM-DD'), TO_DATE(N'2017-12-25','YYYY-MM-DD'), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 14314, N'Blanche', N'Neige', N'F', N'54071102651', TO_DATE(N'1954-07-11','YYYY-MM-DD'), NULL)
/
