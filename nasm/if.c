// if条件语句
int main() {
    int level;
    int grade = 75;
    if (grade >= 90) {
        level = 1;
    } else if (grade >= 80) {
        level = 2;
    } else if (grade >= 70) {
        level = 3;
    } else {
        level = 4;
    }
    return level;
}
