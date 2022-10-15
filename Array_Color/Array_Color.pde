color[] colores = {color(255, 255, 0), color(0, 255, 255), color(255, 0, 255)};

void setup() 
{
    size(600, 600);
    strokeWeight(5);
}

void draw() 
{
    int indice = (int)map(mouseX, 0, width, 0, 3);
    background(colores[indice]);

    /* OTRA FORMA DE HACERLO MAS FEA
    if(mouseX <= width / 3)
        background(colores[0]);
    else if(mouseX >= width * 2/3)
            background(colores[2]);
        else
            background(colores[1]);
    */
    
    line(200, 0, 200, 600);
    line(400, 0, 400, 600);
}
