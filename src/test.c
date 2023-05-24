#include <stdio.h>

int min(int a, int b)
{
    return a<b?a:b;
}
 

void assemble()
{
    int n;
    scanf("%d",&n);
    int e[n];
    scanf("%d %d",&e[0],&e[1]);
    int x[n];
    scanf("%d %d",&x[0],&x[1]);
    int a[2][n];
    int t[2][n];
    for(int i = 0;i<2;i++)
    {
        for(int j = 0; j<n;j++)
        {
            scanf("%d",&a[i][j]);
        }
    }
    for(int i = 0;i<2;i++)
    {
        for(int j = 0; j<n;j++)
        {
            scanf("%d",&t[i][j]);
        }
    }
    int f1[n],f2[n],j;
    f1[0] = e[0]+a[0][0];
    f2[0] = e[1]+a[1][0];
    for(j = 1; j<n;++j)
    {
        f1[j] = min(f1[j-1]+a[0][j],f2[j-1]+t[1][j]+a[0][j]);
        f2[j] = min(f2[j-1]+a[1][j],f1[j-1]+t[0][j]+a[1][j]);
    }
    int l;
    if(f1[n-1]+x[0]<f2[n-1]+x[1])
    {
        l =1;
        printf("%d\n",f1[n-1]+x[0]);
        printf("%d\n",l);
    }
    else
    {
        l = 2;
        printf("%d\n",f2[n-1]+x[1]);
        printf("%d\n",l);
    }
}
int main()
{
    assemble();
 
}