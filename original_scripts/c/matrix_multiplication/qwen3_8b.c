#include <stdio.h>
#include <stdlib.h>

#define ROWS1 3
#define COLS1 3
#define ROWS2 3
#define COLS2 3

int main() {
int a[ROWS1][COLS1];
int b[ROWS2][COLS2];
int c[ROWS1][COLS2];
int i,j,k;
for(i=0;i<ROWS1;i++)
for(j=0;j<COLS1;j++)
a[i][j]=i*COLS1+j;
for(i=0;i<ROWS2;i++)
for(j=0;j<COLS2;j++)
b[i][j]=i*COLS2+j;
for(i=0;i<ROWS1;i++)
for(j=0;j<COLS2;j++)
c[i][j]=0;
for(i=0;i<ROWS1;i++)
for(j=0;j<COLS2;j++)
for(k=0;k<COLS1;k++)
c[i][j]+=a[i][k]*b[k][j];
for(i=0;i<ROWS1;i++)
for(j=0;j<COLS2;j++)
printf("%d ",c[i][j]);
printf("\n");
return 0;
}