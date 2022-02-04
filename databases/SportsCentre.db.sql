BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Member" (
	"MemberId"	CHAR(6),
	"FirstName"	VARCHAR(30),
	"LastName"	VARCHAR(30),
	"Phone"	VARCHAR(15),
	PRIMARY KEY("MemberId")
);
CREATE TABLE IF NOT EXISTS "Course" (
	"CourseCode"	CHAR(6),
	"Description"	VARCHAR(100),
	"Fee"	DECIMAL(13, 2),
	PRIMARY KEY("CourseCode")
);
CREATE TABLE IF NOT EXISTS "Instructor" (
	"InstructorId"	INT,
	"FirstName"	VARCHAR(30),
	"LastName"	VARCHAR(30),
	PRIMARY KEY("InstructorID")
);
CREATE TABLE IF NOT EXISTS "tblCertificate" (
	"MemberId"	CHAR(6),
	"CourseCode"	CHAR(6),
	"AssessmentDate"	DATE,
	"InstructorId"	INT,
	PRIMARY KEY("MemberId","CourseCode"),
	FOREIGN KEY("CourseCode") REFERENCES "Course"("CourseCode"),
	FOREIGN KEY("InstructorId") REFERENCES "Instructor"("InstructorId"),
	FOREIGN KEY("MemberId") REFERENCES "Member"("MemberId")
);
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('012010','Emily','Marr','01433 181743');
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('131092','Joe','Donald','01433 910007');
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('132099','Abdel','Patel','01433 897267');
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('145543','Precious','Jones','01433 982816');
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('148765','Jack','Marr','01433 181743');
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('177455','Ewan','Wilson','01403 234977');
INSERT INTO "Member" ("MemberId","FirstName","LastName","Phone") VALUES ('177580','Viran','Ahmed','09828 162534');
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('DG0011','Beginner Yoga',30);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('CR0001','Lifeguard level 1',100);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('DG3002','Beginners adult swimming',20);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('SO0112','Badminton level 1',20);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('SO0201','Badminton level 2',40);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('SP8701','Beginners ball room dancing',30);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('CR0020','Junior climbing',20);
INSERT INTO "Course" ("CourseCode","Description","Fee") VALUES ('CR0014','Advanced climbing',40);
INSERT INTO "Instructor" ("InstructorID","FirstName","LastName") VALUES (1,'Sue','James');
INSERT INTO "Instructor" ("InstructorID","FirstName","LastName") VALUES (2,'Greta','Geuze');
INSERT INTO "Instructor" ("InstructorID","FirstName","LastName") VALUES (3,'Mohammed','Franks');
INSERT INTO "Instructor" ("InstructorID","FirstName","LastName") VALUES (4,'Jay','Linton');
INSERT INTO "Instructor" ("InstructorID","FirstName","LastName") VALUES (5,'James','Sue');
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('145543','DG0011','21/02/2019',1);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('012010','DG0011','21/02/2019',1);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('132099','DG3002','01/03/2019',2);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('131092','CR0001','15/04/2019',3);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('132099','CR0001','15/04/2019',3);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('012010','CR0001','15/04/2019',3);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('132099','SO0112','02/06/2019',4);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('145543','SO0112','02/06/2019',4);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('148765','SP8701','11/06/2019',2);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('145543','SP8701','01/07/2019',2);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('148765','SO0201','15/08/2019',1);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('132099','SO0201','11/09/2019',1);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('148765','CR0020','12/10/2019',4);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('177455','CR0001','15/12/2019',5);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('177580','CR0001','15/12/2019',5);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('177455','CR0014','24/01/2020',4);
INSERT INTO "Certificate" ("MemberId","CourseCode","AssessmentDate","InstructorID") VALUES ('177580','CR0014','24/01/2020',4);
COMMIT;
