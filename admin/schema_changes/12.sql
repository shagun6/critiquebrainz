-- Add a MusicBrainz Row ID column to the user table
BEGIN;

ALTER TABLE "user" ADD COLUMN musicbrainz_row_id INTEGER;
ALTER TABLE "user" ADD CONSTRAINT user_musicbrainz_row_id_key UNIQUE (musicbrainz_row_id);

COMMIT;
