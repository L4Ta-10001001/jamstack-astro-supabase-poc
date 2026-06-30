-- ============================================================
-- Supabase Schema: Product Catalog — Jamstack PoC
-- Ejecutar este script en el SQL Editor del proyecto Supabase
-- ============================================================

-- Crear la tabla de productos
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  image_url VARCHAR(500),
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Insertar 3 productos de ejemplo
INSERT INTO products (name, description, price, image_url) VALUES
  ('Wireless Headphones', 'Over-ear Bluetooth headphones with noise cancellation', 79.99, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400'),
  ('Mechanical Keyboard', 'RGB backlit mechanical keyboard with Cherry MX switches', 129.99, 'https://images.unsplash.com/photo-1618384887929-16ec33fab9ef?w=400'),
  ('USB-C Hub', '7-in-1 USB-C hub with HDMI, USB 3.0, SD card reader', 34.99, 'https://images.unsplash.com/photo-1625723044797-44abc9d4a2b1?w=400');

-- Habilitar Row Level Security (opcional — solo lectura pública)
ALTER TABLE products ENABLE ROW LEVEL SECURITY;

-- Permitir SELECT anónimo para que el build de Astro pueda leer
CREATE POLICY "Allow anonymous read access" ON products
  FOR SELECT USING (true);
