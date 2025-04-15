CREATE TABLE translations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  source_text TEXT NOT NULL,
  translated_text TEXT,
  source_lang VARCHAR(10),
  target_lang VARCHAR(10),
  created_at TIMESTAMP DEFAULT now()
);