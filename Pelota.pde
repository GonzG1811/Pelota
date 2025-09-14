// Pelota que rebota de arriba a abajo
float x, y;     // posición
float dy = 3;   // velocidad en y
float r  = 40;  // radio de la pelota

void setup() {
  size(600, 400);
  x = width/2;   // centrada horizontal
  y = height/2;  // arranca en el medio vertical
  noStroke();
  smooth();
}

void draw() {
  background(240);

  // mover solo en Y
  y += dy;

  // rebotar en los bordes verticales
  if (y + r > height) { 
    y = height - r;
    dy *= -1;
  }
  if (y - r < 0) { 
    y = r;
    dy *= -1;
  }

  // dibujar pelota
  fill(200, 50, 150);
  circle(x, y, r*2);
}
