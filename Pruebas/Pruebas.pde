void setup()
{
    int x = 0;
    int y = 600;
    size(600, 600);
    background(255);
    
    stroke(255, 0, 0);
    strokeWeight(5);
    line(0, 0, width, height);
    line(0, height, width, 0);
    line(0, height/2, width, height/2);
    line(width/2, 0, width/2, height);
    /*
    for(int i = 0; i < 3; i++)
    {
        stroke(255, 0, 0);
        strokeWeight(5);
        line(0, x, 600, y);
        x += 300;
        y -= 300;
    }

    line(300, 0, 300, 600);
    */

    /*
    text("txt", x, y) -> muestra un texto.
    txt -> texto a mostrar.
    x -> coordenada en X de la esquina superior izquierda.
    y -> coordenada en Y de la esquina superior izquierda.
    */
    textSize(30); // Defino el tamaño del texto a mostrar.
    fill(0, 255, 0);
    text("Holiwii", 200, 300);
}

void draw()
{
    background(0);
    stroke(255, 0, 0);
    strokeWeight(5);
    line(0, 0, width, height);
    line(0, height, width, 0);
    line(0, height/2, width, height/2);
    line(width/2, 0, width/2, height);
    if(mousePressed) // Detecta si el botón izquierdo del mouse está apretado
    {
        fill(255, 0, 0);
        ellipse(mouseX, mouseY, 50, 50);
    }

    text("x= " + mouseX + " y= " +mouseY, mouseX, mouseY);
    
    /*
    mouseX -> Toma la coordenada en X actual del cursos
    mouseY -> Toma la coordenada en Y actual del cursos
    */
}