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
    freopen("output_n.txt","w",stdout);

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
        printf("module %s_%s_Latches(\n",stage[i],stage[i+1]);
        for(int j = 0;j < cnt;j ++){
            if(c[j].end > i && c[j].start <= i){
                if(c[j].width > 1) {
                    printf("\tinput wire [%d:0] %s_%s,\n",c[j].width-1,stage[i],c[j].name);
                    printf("\toutput reg [%d:0] %s_%s,\n",c[j].width-1,stage[i+1],c[j].name);
                }
                else {
                    printf("\tinput wire %s_%s,\n",stage[i],c[j].name);
                    printf("\toutput reg %s_%s,\n",stage[i+1],c[j].name);
                }
            }
        }
        printf("\tinput clk,\n");
        printf("\tinput rst,\n");
        printf("\tinput %s_shouldstall\n",stage[i]);
        printf("\t);\n");
        printf("\talways @ (posedge clk or posedge rst or posedge %s_shouldstall) begin\n",stage[i]);
        printf("\t\tif(rst || %s_shoudstall) begin\n",stage[i]);
        for(int j = 0;j < cnt;j ++){
            if(c[j].end > i && c[j].start <= i){
                printf("\t\t\t%s_%s <= 0;\n",stage[i+1],c[j].name);
            }
        }
        printf("\t\tend\n");
        printf("\t\telse begin\n");
        for(int j = 0;j < cnt;j ++){
            if(c[j].end > i && c[j].start <= i){
                printf("\t\t\t%s_%s <= %s_%s;\n",stage[i+1],c[j].name,stage[i],c[j].name);
            }
        }
        printf("\t\tend\n");
        printf("\tend\n");
        printf("endmodule\n");
    }
    return 0;
}