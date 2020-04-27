float range_x_min = -1;
float range_x_max =  1;
float range_y_min = -1;
float range_y_max =  1;

boolean changed = true;

Complex_no z = new Complex_no(0, 0);

void setup() {
    size(800, 600);
    background(255);
}


void draw() {
    
    float change_x = (range_x_max - range_x_min)/width;
    float change_y = (range_y_max - range_y_min)/height;
    
    if(changed){
        background(255);
        for(float x = range_x_min ; x <= range_x_max ; x += change_x){
            for(float y = range_y_min - 1 ; y <= range_y_max ; y += change_y){
                Complex_no c = new Complex_no(x, y);
                strokeWeight(3);
                int t = z.bounded(c);
                if (t == 20) {
                    stroke(0);
                }else {
                    stroke(t*4 + abs(10*(x+0.3)),t*2 + abs(180*(x+0.8)),t*8 + abs(100*(x + 0.3)));
                }
               point(getx_complex(x), gety_complex(y));
            }
        }
        changed = false;
    }
}

void keyPressed() {
    changed = true;
    if (keyCode == UP) {
        range_y_min -= 0.1;      
        range_y_max -= 0.1;    
      }
    if (keyCode == DOWN) {
        range_y_min += 0.1;      
        range_y_max += 0.1;   
      }
    if (keyCode == LEFT) {
        range_x_min -= 0.1;
        range_x_max -= 0.1;
    }
    if (keyCode == RIGHT) {
        range_x_min += 0.1;
        range_x_max += 0.1;
    }
    if(key == 'a'){
        range_x_min += 0.1;
        range_x_max -= 0.1;
        range_y_min += 0.1;
        range_y_max -= 0.1;
    }
    if(key == 'z'){
        range_x_min -= 0.1;
        range_x_max += 0.1;
        range_y_min -= 0.1;
        range_y_max += 0.1;
    }
}

void mousePressed(){
    println(mouseX,mouseY);
}
