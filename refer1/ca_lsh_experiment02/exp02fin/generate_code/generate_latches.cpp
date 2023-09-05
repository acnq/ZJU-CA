#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
using namespace std;

struct Ctrl_Signal{
    char name[20];
    int start;
    int end;
    int width;
}c[30];
char stage[5][10];
int main()
{
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);

    int cnt = 0;
    for(int i = 0;i < 5;i ++) {
        scanf("%s",stage[i]);
    }
    while(scanf("%s",c[cnt].name) != EOF){
        scanf("%d",&c[cnt].width);
        scanf("%d",&c[cnt].start);
        scanf("%d",&c[cnt].end);
        cnt ++;
    }
    for(int i = 0;i < 4;i ++) {
        printf("%s_%s_Latches %s_%s (\n",stage[i],stage[i+1],stage[i],stage[i+1]);
        for(int j = 0;j < cnt;j ++){
            if(c[j].end > i && c[j].start <= i){
                printf("\t.%s_%s(%s_%s),\n",stage[i],c[j].name,stage[i],c[j].name);
                printf("\t.%s_%s(%s_%s),\n",stage[i+1],c[j].name,stage[i+1],c[j].name);
            }
        }
        printf("\t.clk(clk)\n");
        printf("\t);\n");
    }
    return 0;
}