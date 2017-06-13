ALTER TABLE gyms ADD COLUMN position geometry(POINT, 4326);
UPDATE gyms SET position = ST_SetSRID(ST_MakePoint(latitude, longitude) ,4326);
CREATE INDEX idx_gyms ON gyms USING GIST ( position );