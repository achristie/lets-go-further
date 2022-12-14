CREATE TABLE
  IF NOT EXISTS tokens (
    hash bytea PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES users ON DELETE CASCADE,
    expiry TIMESTAMP(0)
    WITH
      TIME zone NOT NULL,
      SCOPE text NOT NULL
  );