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
"Name" CHARACTER VARYING NOT NULL
);

-- Create tables for peaks
CREATE TABLE "Peaks" (
"Id" SERIAL PRIMARY KEY, 
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
INSERT INTO "Grades" VALUES (1, 'Easy');
INSERT INTO "Grades" VALUES (2, 'Medium');
INSERT INTO "Grades" VALUES (3, 'Hard');

-- Insert peaks
INSERT INTO "Peaks" ("Name", "Location", "RegionId", "GradeId") VALUES ('Manaia', 'Whangarei Heads', 1, 2);
INSERT INTO "Peaks" ("Name", "Location", "RegionId", "GradeId") VALUES ('Pirongia', 'Pirongia Forest Park', 2, 2);
INSERT INTO "Peaks" ("Name", "Location", "RegionId", "GradeId") VALUES ('Rangitoto', 'Rangitoto Island', 3, 1);
