void setup() 
{
    size(600, 600);
    textSize(40);
    frameRate(10); // Determina la cantidad de fotogramas mostrados por segundos / velocidad en la que draw() se ejecuta.
    fill(255, 0, 0);
    noStroke(); // Elimina los entornos de las figuras
}

void draw() 
{
    background(0);
    text(frameCount, 300, 300);
    // framecount -> guarda el número del fotograma actual

    ellipse(random(0,width), random(0, height), 50, 50);
    //random(a, b); Devuelve un número flotante comprendidos entre a y b
}
