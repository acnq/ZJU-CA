#include <iostream>
#include <cstdio>
using namespace std;

int main()
{
    freopen("a.txt","r",stdin);
    freopen("b.txt","w",stdout);

    char s[10];
    int cnt = -1;
    while(scanf("%s",s)!=EOF){
        s[8] = ';';
        s[9] = 0;
        cnt ++;
        printf("insts[%d] = 32'h%s\n",cnt,s);
    }
    return 0;
}