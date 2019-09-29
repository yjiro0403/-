#include "../stdaf.hpp"

int main(void)
{
    ifstream ifs("program.txt");
    
    if (ifs.fail()){
        std::cerr << "Ž¸”s" << std::endl;
        return 1;
    }

    string str, strprev;
    while (getline(ifs, str)){
        if(str == strprev)
            cout << str << endl;
        strprev = str;
    }
    
}