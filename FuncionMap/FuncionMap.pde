float diametro, relleno;

void setup() 
{
    size(600, 600);
}

void draw() 
{
    background(100, 0, 0);
    /*
    Función map: Setea un rango de valores transformando lo original en lo deseado.
        - Primer argumento: variable a transformar.
        - Segundo argumento: mínimo original de la variable.
        - Tercer argumento: máximo original de la variable.
        - Cuarto argumento: mínimo deseado de la variable.
        - Quinto argumento: máximo deseado de la variable.
    */
    diametro = map(mouseX, 0, width, 100, 500);
    relleno = map(mouseX, 0, width, 0, 255);
    fill(relleno);
    ellipse(300, 300, diametro, diametro);
}
