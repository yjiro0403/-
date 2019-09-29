import std.stdio;
import std.string;
import std.algorithm, std.array, std.conv;
import std.bigint;

const int num   = 32;
const int x_max = 140;

BigInt[x_max] a;

BigInt b = "1";

BigInt f(int x) {
    if(x <= 2) return b;
    if (!a[x-1])
        a[x-1] = f(x-1);
    if (!a[x-2])
        a[x-2] = f(x-2);

    return a[x-1]+a[x-2];
}

void main()
{
    writeln(f(x_max));
}