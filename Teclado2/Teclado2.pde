float x = 300, y = 300;

void setup() 
{
    size(600, 600);
    //frameRate(10); // Determina la cantidad de fotogramas mostrados por segundos / velocidad en la que draw() se ejecuta.
    stroke(0, 255, 0);
    noFill();
    strokeWeight(10);
}

void draw() 
{
    background(0);
    ellipse(x, y, 70, 70);
}

// Se ejecuta cuando se presiona una tecla
void keyPressed() 
{
    // 'keyCode' se usa para identificar teclas que no son de texto
    
    switch(keyCode)
    {
        case LEFT:
            x -= 10;
            break;
        case RIGHT:
            x += 10;
            break;
        case UP:
            y -= 10;
            break;
        case DOWN:
            y += 10;
            break;
    }
}