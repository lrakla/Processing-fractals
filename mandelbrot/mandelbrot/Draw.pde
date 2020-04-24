float getx_complex(float x){
  return (width/2+width*x/4);
}

float gety_complex(float y){
  return (height/2-height*y/4);
}

float getx_pro(float x){
  return x-width/2;
}
float gety_pro(float y){
  return height/2-y;
}
