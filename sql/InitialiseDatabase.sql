-- Drop tables
DROP TABLE "Peaks";
DROP TABLE "Regions";
DROP TABLE "Grades";

-- Create table for regions
CREATE TABLE "Regions" (
"Id" INTEGER PRIMARY KEY, 
"Name" CHARACTER VARYING NOT NULL
);

-- Create table for grades
CREATE TABLE "Grades" (
"Id" INTEGER PRIMARY KEY, 
"Code" CHARACTER VARYING NOT NULL,
"Name" CHARACTER VARYING NOT NULL
);

-- Create tables for peaks
CREATE TABLE "Peaks" (
"Id" SERIAL PRIMARY KEY, 
"Code" CHARACTER VARYING NOT NULL, 
"Name" CHARACTER VARYING NOT NULL, 
"Location" CHARACTER VARYING NOT NULL,
"RegionId" INTEGER NOT NULL REFERENCES "Regions"("Id"),
"GradeId" INTEGER NOT NULL REFERENCES "Grades"("Id")
);

-- Create indexes for peaks
CREATE INDEX "Peaks_RegionId" ON "Peaks"("RegionId");
CREATE INDEX "Peaks_GradeId" ON "Peaks"("GradeId");

-- Insert regions
INSERT INTO "Regions" VALUES (1, 'Northland');
INSERT INTO "Regions" VALUES (2, 'Waikato');
INSERT INTO "Regions" VALUES (3, 'Auckland');

-- Insert grades
INSERT INTO "Grades" VALUES (1, 'Easy', 'Easy');
INSERT INTO "Grades" VALUES (2, 'Medium', 'Medium');
INSERT INTO "Grades" VALUES (3, 'Hard', 'Hard');

-- Insert peaks
INSERT INTO "Peaks" ("Code", "Name", "Location", "RegionId", "GradeId") VALUES ('Manaia', 'Manaia', 'Whangarei Heads', 1, 2);
INSERT INTO "Peaks" ("Code", "Name", "Location", "RegionId", "GradeId") VALUES ('Pirongia', 'Pirongia', 'Pirongia Forest Park', 2, 2);
INSERT INTO "Peaks" ("Code", "Name", "Location", "RegionId", "GradeId") VALUES ('Rangitoto', 'Rangitoto', 'Rangitoto Island', 3, 1);
