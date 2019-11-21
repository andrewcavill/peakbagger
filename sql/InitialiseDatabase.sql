-- Drop tables
DROP TABLE "Links";
DROP TABLE "Peaks";
DROP TABLE "Regions";
DROP TABLE "Grades";

-- Create table for regions
CREATE TABLE "Regions" (
"Id" INTEGER PRIMARY KEY, 
"Name" CHARACTER VARYING NOT NULL
);

-- Insert regions
INSERT INTO "Regions" VALUES (1, 'Northland');
INSERT INTO "Regions" VALUES (2, 'Waikato');
INSERT INTO "Regions" VALUES (3, 'Auckland');

-- Create table for grades
CREATE TABLE "Grades" (
"Id" INTEGER PRIMARY KEY, 
"Name" CHARACTER VARYING NOT NULL
);

-- Insert grades
INSERT INTO "Grades" VALUES (1, 'Easy');
INSERT INTO "Grades" VALUES (2, 'Medium');
INSERT INTO "Grades" VALUES (3, 'Hard');

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

-- Create tables for links
CREATE TABLE "Links" (
"Id" INTEGER PRIMARY KEY,
"PeakId" INTEGER NOT NULL REFERENCES "Peaks"("Id"),
"Url" CHARACTER VARYING NOT NULL,
"Text" CHARACTER VARYING NOT NULL
);

-- Manaia
INSERT INTO "Peaks"
  VALUES (1, 'Manaia', 'Mt Manaia', 'Whangarei Heads', 750, -35.8183, 174.5170, 1, 2, '2 hours return', 
  'Park in the Mount Manaia Club’s lower car park on Whang?rei Heads Road above McLeod Bay. The track begins just above the car park.', 
  'The tracks climbs steadily through regenerating bush, getting quite steep towards thed end, before you are rewarded with impressive views over Whangarei harbour.');
INSERT INTO "Links" VALUES (1, 1, 'https://www.doc.govt.nz/parks-and-recreation/places-to-go/northland/places/whangarei-heads-area/things-to-do/mount-manaia-track/', 'DOC Website - Mount Manaia Track');
INSERT INTO "Links" VALUES (2, 1, 'https://discoverwhangareiheads.nz/walk/mount-manaia/', 'Discover Whangarei Heads - Mount Manaia');

-- Pirongia
INSERT INTO "Peaks" ("Id", "Code", "Name", "Area", "Elevation", "Latitude", "Longitude", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES (2, 'Pirongia', 'Pirongia', 'Pirongia Forest Park', 750, -37.9928, 175.0980, 2, 2, '1-2 hours return', 'Smith St', 'A cool walk');

-- Rangitoto
INSERT INTO "Peaks" ("Id", "Code", "Name", "Area", "Elevation", "Latitude", "Longitude", "RegionId", "GradeId", "Duration", "Access", "Description") 
  VALUES (3, 'Rangitoto', 'Rangitoto', 'Rangitoto Island', 750, -36.788, 174.8582, 3, 1, '1-2 hours return', 'Smith St', 'A cool walk');
