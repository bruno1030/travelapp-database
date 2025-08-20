CREATE TABLE city_translations (
  id SERIAL PRIMARY KEY,
  city_id INTEGER NOT NULL REFERENCES cities(id) ON DELETE CASCADE,
  locale VARCHAR(10) NOT NULL,
  translated_name VARCHAR(255) NOT NULL,
  UNIQUE(city_id, locale)
);
