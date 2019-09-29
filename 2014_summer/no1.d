import stdaf;

const int R0min = 0;
const int R0max = 10;

double f0(int d)
{
    int cnt;

    for(int y; y <= R0max; y+=d){
        for(int x; x <= R0max; x+=d){
            cnt++;
        }
        //writeln(cnt);
    }

    return cnt;
}

double f1(int d)
{
    int cnt;

    for(int y; y <= R0max; y+=d){
        for(int x; x <= R0max; x+=d){
            if(((x-5)^^2)+((y-5)^^2) <= 5^^2)
                cnt++;
        }
        //writeln(cnt);
    }

    return cnt;

}

void main(string[] args)
{
    //writeln((f1(args[1].to!int)/f0(args[1].to!int))/4);
    writeln(f1(args[1].to!int)/f0(args[1].to!int)/4);
}