#include "../stdaf.hpp"

int main(void)
{
    ifstream ifs("program.txt");
    if (ifs.fail()){
        std::cerr << "Ž¸”s" << std::endl;
        return 1;
    }

    string str;
    int cnt = 0;
    while (getline(ifs, str))
        for (size_t i = 0; i < str.size() ;i++)
            if (str[i] == ':')
                cnt++;

    cout << cnt << endl;

    return 0;
}