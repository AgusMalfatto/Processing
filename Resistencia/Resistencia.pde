import java.lang.Math;

color[] colores = {color(0, 0, 0), color(98, 50, 50),
color(255, 0, 0), color(255, 128, 0),
color(255, 255, 0), color(0, 128, 0),
color(0, 128, 192), color(128, 0, 255),
color(128, 128, 128), color(255, 255, 255)};

int[] franjas = {0, 0, 0};
int colorClick;
boolean  hayCursor;

void setup() 
{
    size(360, 640);
    textSize(35);
}

void draw() 
{
    background(255);
    for(int i = 0; i <= 9; i++)
    {
        fill(colores[i]);
        rect(width * 0.8, (i * height / 10), (height / 10) - 5, (height / 10) - 5);
    }

    fill(247, 203, 145);
    rect(0.25 * width, 0.1 * height, width * 0.3, height * 0.6); // Resistencia completa
    fill(colores[franjas[0]]);
    rect(0.25 * width, 0.3 * height, width * 0.3, height * 0.03); // Primera franja de color
    fill(colores[franjas[1]]);
    rect(0.25 * width, 0.45 * height, width * 0.3, height * 0.03); // Segunda franja de color
    fill(colores[franjas[2]]);
    rect(0.25 * width, 0.6 * height, width * 0.3, height * 0.03); // Tercera franja de color

    if(hayCursor)
    {
        fill(colores[colorClick]);
        ellipse(mouseX, mouseY, 20, 20);
    }

    fill(0);
    int valor = calcularResistencia();
    if(valor >= 1000000) 
        text(valor/1000000 + "MΩ", width*0.2, height*0.9);
    else if(valor >= 1000) 
        text(valor/1000 + "KΩ", width*0.2, height*0.9);
        else
             text(valor + "Ω", width*0.2, height*0.9);
}

void mousePressed() 
{ 
    if(mouseX > width * 0.8)
    {
        hayCursor = true;
        colorClick = (int)map(mouseY, 0, height, 0, 10);
        //println(colorClick);
    }    
}


void mouseReleased() 
{
    hayCursor = false;    
    // Verifico que el click se suelte dentro de la resistencia de coordenadas X
    if(mouseX > 0.25 * width && mouseX < 0.55 * width)
    {
        /*
        Divido desde la primera franja hasta la última en 3 escalas.
            int numeroFranja = (int)map(mouseY, height * 0.3, height * 0.7, 0, 3);
            if(numeroFranja >= 0 && numeroFranja <= 2)
        */

        int valor = calcularFranja();
        if(valor != -1)
            franjas[valor] = colorClick;
    }
}

int calcularFranja()
{
    int valor = -1;
    // Calculo la franja desde su inicio en Y hasta el inicio en Y sumado al ancho del rectángulo
    if(mouseY >= 0.3*height && mouseY <= 0.33*height)
        valor = 0;
    else if(mouseY >= height * 0.45 && mouseY <= height * 0.48)
            valor = 1;
        else if(mouseY >= height * 0.6 && mouseY <= height * 0.63)
                valor = 2;
    
    return valor;
}

int calcularResistencia()
{
    int resistencia;
    // Comienza a operar desde la franja de arriba (franja[0])
    resistencia = ((franjas[0]*10 + franjas[1]) * (int)Math.pow(10, franjas[2]));
    return resistencia;
}