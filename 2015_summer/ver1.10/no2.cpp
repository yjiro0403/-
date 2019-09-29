#include "../stdaf.hpp"

int main(void)
{
    ifstream ifs("program.txt");

    string str;
    for (int i=1; getline(ifs,str); i++)
        cout << i << " : " << str << endl;

    return 0;
}