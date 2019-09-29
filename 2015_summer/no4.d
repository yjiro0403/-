import stdaf;

struct Mat{
    int num;
    char[] str;
}

void main()
{
    Mat[] didMat;
    char[][] strMat;
    
    auto fin = File("program.txt");

    foreach(line; fin.byLine){
        bool flags = false;
        for(int i=0; i < strMat.length; i++)
            if (line == strMat[i]){
                didMat.length++;
                with(didMat[didMat.length-1]){
                    num = i;
                    str = line.dup;
                }

                flags = true;
            }

        if (flags==false)
            strMat ~= line.dup;
    }

    didMat.sort;
    
    for (int j = 0; j<didMat.length;j++)
        writeln(didMat[j].str);

    writefln("cnt = %d",didMat.length);
    
}