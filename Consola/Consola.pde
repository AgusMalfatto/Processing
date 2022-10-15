void setup() 
{
    size(1200, 600);
}

void draw() 
{
    background(0, 200, 255);
    for(int i = 0; i <= height; i += 30)
    {
        for(int k = 0; k <= width; k += 30)
        {
            ellipse(k + frameCount % 30, i, 10, 10);
        }
    }
}
