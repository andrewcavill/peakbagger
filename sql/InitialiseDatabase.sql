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
"Id" INTEGER PRIMARY KEY, 
"Code" CHARACTER VARYING NOT NULL, 
"Name" CHARACTER VARYING NOT NULL, 
"Area" CHARACTER VARYING NOT NULL,
"Elevation" INTEGER,
"Latitude" DECIMAL,
"Longitude" DECIMAL,
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
INSERT INTO "Grades" VALUES (1, 'Easy');
INSERT INTO "Grades" VALUES (2, 'Medium');
INSERT INTO "Grades" VALUES (3, 'Hard');

-- Manaia
INSERT INTO "Peaks" ("Id", "Code", "Name", "Area", "Elevation", "Latitude", "Longitude", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES (1, 'Manaia', 'Manaia', 'Whangarei Heads', 750, -35.8183, 174.5170, 1, 2, '1-2 hours return', 'Smith St', 'A cool walk');

-- Pirongia
INSERT INTO "Peaks" ("Id", "Code", "Name", "Area", "Elevation", "Latitude", "Longitude", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES (2, 'Pirongia', 'Pirongia', 'Pirongia Forest Park', 750, -37.9928, 175.0980, 2, 2, '1-2 hours return', 'Smith St', 'A cool walk');

-- Rangitoto
INSERT INTO "Peaks" ("Id", "Code", "Name", "Area", "Elevation", "Latitude", "Longitude", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES (3, 'Rangitoto', 'Rangitoto', 'Rangitoto Island', 750, -36.788, 174.8582, 3, 1, '1-2 hours return', 'Smith St', 'A cool walk');
