CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email VARCHAR(255) UNIQUE NOT NULL,
  name VARCHAR(255),
  password_hash TEXT,
  provider VARCHAR(50),
  created_at TIMESTAMP DEFAULT now()
);
-- This migration creates the users table with the following fields:
-- - id: A unique identifier for each user, generated using the pgcrypto extension.
-- - email: A unique email address for each user, which cannot be null.
-- - name: The name of the user, which can be null.
-- - password_hash: A hashed password for the user, which can be null.
-- - provider: The authentication provider for the user (e.g., 'local', 'google'), which can be null.
-- - created_at: A timestamp indicating when the user was created, defaulting to the current time.