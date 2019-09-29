import stdaf;

struct Mat{
    int num;
    char[] str;
}

char[][] strMat;

int strcheck(char[] str)
{
    int cnt;

    for(int i = 0; i < strMat.size();i++)
        if (str == strMat[i])
            return -1; //“¯‚¶“z
}

void main()
{    
    auto fin = File("program.txt");

    int cnt;
    foreach(line; fin.byLine){
        int n = strcheck(line);
        if(n)
            cnt += n;
        else
            strMat ~= line.dup;
    }

    writefln("cnt = %d",cnt);
    
}