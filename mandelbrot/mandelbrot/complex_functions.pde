class Complex_no {
    float re;
    float im;

    Complex_no(float re, float im) {
        this.re = re;
        this.im = im;
    }

    Complex_no square() {
        float re = this.re * this.re - this.im * this.im;
        float im = 2 * this.re * this.im;
        return new Complex_no(re, im);
    }
    Complex_no add(Complex_no no1, Complex_no no2) {
        return new Complex_no(no1.re + no2.re, no1.im + no2.im);
    }
    float modular() {
        return sqrt(this.re * this.re + this.im * this.im);
    }

    int bounded(Complex_no c) {
        int iter = 20;
        Complex_no n = this;
        for (int i = 0; i < iter; i++) {
            n = add(n.square(), c);
            if (n.modular() > 2) {
                return i;
            }

        }
        return 20;

    }
};
