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
"Area" CHARACTER VARYING NOT NULL,
"Elevation" INTEGER,
"RegionId" INTEGER NOT NULL REFERENCES "Regions"("Id"),
"GradeId" INTEGER NOT NULL REFERENCES "Grades"("Id"),
"Duration" CHARACTER VARYING NOT NULL,
"Access" CHARACTER VARYING NOT NULL,
"Description" CHARACTER VARYING NOT NULL
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
INSERT INTO "Peaks" ("Code", "Name", "Area", "Elevation", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES ('Manaia', 'Manaia', 'Whangarei Heads', 750, 1, 2, '1-2 hours return', 'Smith St', 'A cool walk');
INSERT INTO "Peaks" ("Code", "Name", "Area", "Elevation", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES ('Pirongia', 'Pirongia', 'Pirongia Forest Park', 750, 2, 2, '1-2 hours return', 'Smith St', 'A cool walk');
INSERT INTO "Peaks" ("Code", "Name", "Area", "Elevation", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES ('Rangitoto', 'Rangitoto', 'Rangitoto Island', 750, 3, 1, '1-2 hours return', 'Smith St', 'A cool walk');
