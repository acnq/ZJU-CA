#include <iostream>
#include <cstdio>
#include <cstdlib>
using namespace std;

int main()
{
    freopen("a.txt","w",stdout);
    for(int i = 1;i <= 32;i ++){
        //cout<<"assign r"<<i<<" = register["<<i<<"];"<<endl;
       cout<<"output wire [31:0] r"<<i<<","<<endl;
       //cout<<".r"<<i<<"(r"<<i<<"),"<<endl;
    }
    return 0;
}