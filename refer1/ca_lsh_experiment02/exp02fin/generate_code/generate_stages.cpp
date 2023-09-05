#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
using namespace std;

struct Ctrl_Signal{
    char name[20];
    int begin;
    int end;
    int width;
}c[30];
char stage[5][10];
int main()
{
    freopen("input.txt","r",stdin);
    freopen("output_stages.txt","w",stdout);

    int cnt = 0;
    for(int i = 0;i < 5;i ++) {
        scanf("%s",stage[i]);
    }
    while(scanf("%s",c[cnt].name) != EOF){
        scanf("%d",&c[cnt].width);
        scanf("%d",&c[cnt].begin);
        scanf("%d",&c[cnt].end);
        cnt ++;
    }
    for(int i = 0;i < 5;i ++) {
        for(int j = 0;j < cnt;j ++){
            if(c[j].end >= i && c[j].begin <= i){
                if(c[j].width > 1) printf("wire [%d:0] %s_%s;\n",c[j].width - 1,stage[i],c[j].name);
                else printf("wire %s_%s;\n",stage[i],c[j].name);
            }
        }
    }
    return 0;
}