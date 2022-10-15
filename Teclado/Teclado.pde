void setup()
{
    size(600, 600);
    background(255);
}

void draw() 
{
    // Devuelve true si hay una tecla presionada
    if(keyPressed) 
    {
        // 'key' almacena las teclas de texto presionada (a-z, enter, barra espaciadora)
        // Se almcena en código ascii
        if(key == 'c')
            ellipse(random(0, width), random(0, height), 50, 50);
        if(key == 'r')
            rect(random(0, width), random(0, height), 50, 50);
        if(key == 32) // 32 es el número ascii del espacio 
            line(random(0, width), random(0, height), random(0, width), random(0, height));
        println((int)key);
    }
}
