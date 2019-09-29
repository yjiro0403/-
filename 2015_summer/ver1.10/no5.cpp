#include "../stdaf.hpp"

#define NEW_STR 10 //V‚µ‚¢•¶š—ñ‚ª“Ç‚İ‚Ü‚ê‚½
#define SIM 11 //—Ş—‚µ‚½•¶š—ñ‚ªŒ©‚Â‚©‚Á‚½
#define NOSIM 12 //—Ş—‚µ‚½•¶š—ñ‚ªŒ©‚Â‚©‚ç‚È‚©‚Á‚½

typedef struct mat{
    int num; //s”‚ğŠi”[‚·‚é
    string str;
}Mat;

vector<Mat> strMat, didMat; //“¯‚¶‚¾‚Æ”»’f‚µ‚½•¶š—ñ‚ğŠi”[

bool strcheck(string str1, string str2)
{
    int cnt = 0;

    if(str1.size() > str2.size())
        str2.resize(str1.size(),' ');
    else
        str1.resize(str2.size(),' ');

    for(size_t i = 0; i < str1.size();i++)
        if(str1[i] != str2[i]){
            //cout << str1[i] << str2[i] << endl;
            cnt++;
        }
            
    if(cnt < 5)
        return true;
    else
        return false;
}

int simcheck(string str)
{
    int cnt = 0;
    
    for(size_t i = 0; i < strMat.size(); i++){
        if (str == strMat[i].str){
            cout << str << " : " << str << endl;
            cnt++;
        } else {
            bool flag = strcheck(str, strMat[i].str);
            if (flag){
                cout << str << " : " << strMat[i].str << endl;
                cnt++;
            }
        }
    }
   
    return cnt;
}

int main(void)
{
    ifstream ifs("program.txt");
    
    if (ifs.fail()){
        std::cerr << "¸”s" << std::endl;
        return 1;
    }

    string str;
    int cnt = 0;
    for (int i=1; getline(ifs, str); i++){
        int n = simcheck(str);
        if (n){
            //•¶š—ñ‚ª‘¶İ‚µ‚½
            cnt += n;
        } else {
            strMat.push_back({i, str});
        }
    }

    cout << "Sim : " << cnt << endl;
}