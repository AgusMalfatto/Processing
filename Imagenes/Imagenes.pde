PImage imagen, imagenBalon;
float x, y;
int radio = 150;

void setup() 
{
    fullScreen();
    imagen = loadImage("Pepe.png"); // Guarda la imagen en la variable de tipo PImage
    imagenBalon = loadImage("Pelota.png");
    //noCursor(); // Desaparece el cursor de la pantalla
}

void draw() 
{
    background(225, 0, 0);
    image(imagen, mouseX - 147/4, mouseY - 191/4, 147/2, 191/2); 
    /* 
    image imprime la variable image en X e Y
    Los últimos dos parámetros son el ancho y el alto de la imagen
    */

    x = mouseX + radio * sin(frameCount * 0.1);
    y = mouseY + radio * cos(frameCount * 0.1);
    image(imagenBalon, x, y, 50, 50);
}
