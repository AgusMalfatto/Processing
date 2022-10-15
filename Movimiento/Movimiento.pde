/* ECUACIONES PARAMÉTRICAS
Usarlas para hacer animaciones
 */

float x, y;
float radio = 5; // Radio que describirá el movimiento de la figura

void setup() 
{
    size(600, 500);
    textSize(30);
    background(255, 0, 100);
    noStroke(); // Elimina entornos de las figuras
}

void draw() 
{
    

    //text(mouseX, mouseX, mouseY);

    x = width / 2 + radio * cos(frameCount * 0.1);
    y = height / 2 + radio * sin(frameCount * 0.1);
    /*
    Width / 2 determina el centro del circulo en X que se describirá con radio r.
    Height / 2 determina el centro del circulo en Y que se describirá con radio r.
    */
    //text(frameCount, 100, 100);
    //text(x, 100, 200);
    //text(y, 100, 300);
    ellipse(x, y, 100, 100);
    radio++;
}
