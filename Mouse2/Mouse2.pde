int rango = 30;

void setup() 
{
    size(600, 600);
    noStroke();
    background(0);
}

void draw() 
{
    
}

// Se ejecuta cuando se presiona un botón y se mueve el cursor
void mouseDragged() 
{
    if(mouseButton == LEFT) 
        fill(255, 0, 0);
    else if(mouseButton == RIGHT)
            fill(0, 255, 0);
        else
            fill(0, 0, 255);
    
    ellipse(random(mouseX - rango, mouseX + rango), random(mouseY - rango, mouseY + rango), 5, 5);
}
