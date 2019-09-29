import std.stdio;

const int num = 50;

long[num] a;

long f(int x) {
    if(x <= 2) return 1;
    if (!a[x-1])
        a[x-1] = f(x-1);
    if (!a[x-2])
        a[x-2] = f(x-2);

    return a[x-1]+a[x-2];
}

void main()
{   
    f(num).writeln;
}