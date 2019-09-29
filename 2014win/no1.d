import std.stdio;

int f(int x) {
    if(x <= 2) return 1;
    return f(x-1)+f(x-2);
}

void main()
{
    int num = 10;
    
    f(num).writeln;
}