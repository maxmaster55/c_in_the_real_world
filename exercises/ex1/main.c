#include<stdio.h>
#include<math.h>

#define PLACEHOLDER 0


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


    printf("distance=%.2f", point_get_distance(p1, p2));

    return 0;
}
