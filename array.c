#include<stdio.h>

int sum(int*array, int count);

int main(){

    int arr[60];
    int s; 
    int count = 0;
    FILE* file;

    file = fopen("data.txt","r");
    fscanf(file, "%d", &count);

    for(int i=0; i<count; i++){
        fscanf(file,"%d", &arr[i]);
    }

    s = sum(arr,count);
    printf("%d", s);
    fclose(file);
    return 0;

}