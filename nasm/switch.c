// switch
int _switch(int x) {
    int y;
    switch (x) {
        case 100:
            y = 1;
            break;
        case 90:
            y = 2;
        case 80:
            y = 3;
            break;
        case 70:
        case 60:
            y = 4;
            break;
        default:
            y = 5;
    }
    return y;
}

int main() {
    return _switch(100);
}
