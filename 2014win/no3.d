import std.stdio;
import std.string;
import std.algorithm, std.array, std.conv;
import std.bigint;

const int num = 32;

//int[num] a;
int a;

void main()
{
    /*
    char[] s = readln().dup;
    s = chomp(s);
    assert(s.length == num);

    char[] s2 = readln().dup;
    s2 = chomp(s2);
    assert(s2.length == num);
*/
    /*
    foreach(int i;0..num){
        a *= 10;
        a += s[i].to!(int)-'0';
    }*/
    
    //writeln(s[1]);
    //writeln(s.to!BigInt+s2.to!BigInt);
    BigInt no1 = "0012345678901234567890123456789012";
    //int n1_kasu = 4;
    BigInt no2 = "0098765432109876543210987654321098";
    int n2_kasu = 9;
    ////f(num).writeln;
    writeln(no1+no2);
}