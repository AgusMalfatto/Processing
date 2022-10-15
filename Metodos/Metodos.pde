void setup() 
{
    size(600, 600);
}

void draw() 
{
    background(0, 100, 255);   
    cuad(mouseX, mouseY, 100);
    circle(300, 300, 100);
}

// Dibuja un cuadrado en la que el primer y último cuadrante son negros.
void cuad(int x, int y, int tam)
{
    fill(255);
    rect(x, y, tam, tam);
    fill(0);
    rect(x, y, tam/2, tam/2);
    rect(x + tam/2, y + tam/2, tam/2, tam/2);
}

// Dibuja un círculo con un cruz en medio.
void circle( float x, float y, float tam)
{
    ellipse(x, y, tam * 2, tam * 2);
    line(x - tam, y, x + tam, y);
    line(x, y - tam, x, y + tam);
}