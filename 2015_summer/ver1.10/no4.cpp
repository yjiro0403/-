#include "../stdaf.hpp"

typedef struct mat{
    int num; //s”‚ğŠi”[‚·‚é
    string str;
}Mat;

vector<Mat> strMat, didMat; //“¯‚¶‚¾‚Æ”»’f‚µ‚½•¶š—ñ‚ğŠi”[

int simcheck(string str)
{
    for (size_t i = 0; i < strMat.size(); i++)
        if (str ==  strMat[i].str)
            return strMat[i].num;

    return 0;
}

int main(void)
{
    ifstream ifs("program.txt");
    
    if (ifs.fail()){
        std::cerr << "¸”s" << std::endl;
        return 1;
    }

    string str;
    for (int i=1; getline(ifs, str); i++){
        int num = simcheck(str);
        if (num){
            //•¶š—ñ‚ª‘¶İ‚µ‚½
            didMat.push_back({num, str});
        } else
            strMat.push_back({i, str});
    }

    //sort
    for (size_t j = 0; j < didMat.size()-1; j++)
        for(size_t k = didMat.size()-1; k > j; k--)
            if (didMat[k-1].num > didMat[k].num){
                Mat temp = didMat[k-1];
                didMat[k-1] = didMat[k];
                didMat[k] = temp;
            }

    for (size_t j = 0; j < didMat.size(); j++)
        cout << didMat[j].str << endl;

    cout << "Match : " << didMat.size() << endl;
}