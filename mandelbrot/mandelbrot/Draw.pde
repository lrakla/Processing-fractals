float getx_complex(float x) {
    return map(x,range_x_min,range_x_max,-width/2,width/2);
}

float gety_complex(float y) {
    return map(y,range_y_min,range_y_max,-height/2,height/2);
}
