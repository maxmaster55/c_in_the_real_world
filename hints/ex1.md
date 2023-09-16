# EX 1

This exercise is meant to teach you about modling data without OOP.

## Solution

1. make a datatype with the name Point .
    - note datatypes in c usually end with the _t postfix for example ```point_t```.
2. search for the formula of __the distance between two points__.

```c

// model a datatype that represents a Point in 2D space
typedef struct {
    float x;
    float y;
}point_t;


// finish the function (you may change the parametrs) 
float point_get_distance(point_t p1, point_t p2){

    float res = sqrt(pow(p2.x - p1.x, 2)+pow(p2.y - p1.y, 2));

    return res;
}


// find the distance between points (1, 6) and (9, 8)
int main(){
    point_t p1 = {1, 6};
    point_t p2 = {9, 8};


    printf("distance = %.2f\n", point_get_distance(p1, p2));

    return 0;
}


```
