// setup() -> Contiene las instrucciones que se ejecutan una sola vez.
void setup() 
{
    int lineaVertical = 100;

    size(500, 500); 
    // size Determina ancho y alto de la ventana en ese orden medido en px.
    // size(ancho, alto);
    // fullScreen(); // Genera una ventana fullscreen. 

    /*
    background
        - background(number) -> Determina el color en una escala de grises (0 - 255)
                                0 es Negro y 255 es Blanco.
        - background(red, green, blue) -> Determina el color en base al formato RGB
                                          Ver RGB Color Wheel en Google.
    
    */
    background(0, 150, 255);

    /*
    stroke
        - stroke(number) -> Determina el color en una escala de grises (0 - 255)
                                0 es Negro y 255 es Blanco.
        - stroke(red, green, blue) -> Determina el color en base al formato RGB
                                          Ver RGB Color Wheel en Google.
    */
    stroke(255);
    strokeWeight(40); // Determina el grosor de la línea en px
      
    /*
    fill(x) -> cambia el color del relleno de las formas cerradas.
    fill(x, y, z) -> formato en RGB
    */

    /* 
        - line(x1, y1, x2, y2);
        - Dibuja una linea desde el punto 1 con coordenadas (x1, y1) hasta el punto (x2, y2)
        El origen inicia en la esquina superior izquierda. El eje 'X' aumenta a la derecha, y el eje 'Y'
        aumenta hacia abajo.
    */
    line(0, 0, 500, 500);  

    /*
    ellipse(Xcentro, Ycentro, ancho, alto) -> Dibuja un círculo/elipse
    */
    ellipse(100, 300, 100, 100);

    /*
    rect(X_esqSupIzq, Y_esqSupIzq, ancho, alto) -> Dibuja un rectángulo/cuadrado
    X_esqSupIzq -> Coordenada X de la esquina superior izquierda del cuadrado/rectángulo
    Y_esqSupIzq -> Coordenada Y de la esquina superior izquierda del cuadrado/rectángulo
    */
    rect(400, 50, 50 , 50);
}

// draw() -> Contiene las instrucciones que se ejecutan de forma iterativa.
void draw() 
{
   
}

