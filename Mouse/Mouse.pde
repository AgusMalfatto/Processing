boolean flag = false;
int rango = 30;

void setup() 
{
    size(600, 600);
    textSize(30);
    noStroke();
    background(0);
}

void draw() 
{
    if(flag)
    {
        ellipse(random(mouseX - rango, mouseX + rango), random(mouseY - rango, mouseY + rango), 5, 5);
    }
}

/*
    // Se ejecuta solo cuando se mueve el mouse
    void mouseMoved() 
    {
        fill(random(0,255), random(0,255), random(0,255));
        ellipse(mouseX, mouseY, 50, 50);
    }

    // Se ejecuta solo cuando se hace click
    void mouseClicked()
    {
        background(255);
    }
*/

// Se ejecuta solo cuando se mantiene el botón presionado 
void mousePressed()
{
    if(mouseButton == LEFT) // Evalúa qué botón se está presionando
        fill(255, 0, 0);
    if(mouseButton == RIGHT) // Evalúa qué botón se está presionando
        fill(0, 0, 255);
    if(mouseButton == CENTER) // Evalúa qué botón se está presionando
        fill(0, 255, 0);
        
    flag = true;
}

// Se ejecuta solo cuando se suelta el botón
void mouseReleased() 
{
    flag = false;
}