BEGIN;


CREATE TABLE IF NOT EXISTS words (
  word    TEXT NOT NULL PRIMARY KEY,
  lword   TEXT NOT NULL AS (LOWER(word)) STORED,
  kind    TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS words_lword   ON words (lword);


END;
