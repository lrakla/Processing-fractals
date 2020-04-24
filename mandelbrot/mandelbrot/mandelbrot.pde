Complex_no z = new Complex_no(0,0);
void setup(){
size(600,600);
background(255);

    
  }
  

void draw(){

for(float i=-2;i<=2;i+=0.01){
  for(float j=-2;j<=2;j+=0.01){
     
     Complex_no c = new Complex_no(i,j);
     strokeWeight(3);
     if(z.bounded(c)){
       stroke(0);
       point(getx_complex(i),gety_complex(j));  
     }
     else{
       stroke(255);
       point(getx_complex(i),gety_complex(j));
      }
    }  
  }
}

//void keyPressed() {
//  if(keyCode==UP){
//    c.re+=0.01;
//  }
//  if(keyCode==DOWN){
//    c.re-=0.01;
//  }
//  if(keyCode==LEFT){
//    c.im-=0.01;
//  }
//  if(keyCode==RIGHT){
//    c.im+=0.01;
//  }

//}
