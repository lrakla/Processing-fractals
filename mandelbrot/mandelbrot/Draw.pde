float getx_complex(float x) {
    return map(x,range_x_min,range_x_max,0,width);
}

float gety_complex(float y) {
    return map(y,range_y_min,range_y_max,0,height);
}
