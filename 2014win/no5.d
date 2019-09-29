import std.stdio;
import std.string;
import std.algorithm, std.array, std.conv;
import std.bigint;
import std.math;


const int n1_kasu = 4;
const int n2_kasu = 9;

void func()
{
    BigInt sum;
    string no1_s = "12345678901234567890123456789012";
    
    BigInt no1 = no1_s;
    BigInt no2 = "98765432109876543210987654321098";
    
    BigInt n1 = no1*pow(10,n1_kasu);
    BigInt n2 = no2*pow(10,n2_kasu);

    sum = n1*n2;

    string ans = sum.to!string;
    
    //write(ans);
    foreach(int i;0..32)
        write(ans[i]);
    writefln("*10^%d",ans.length-1);
}

void main()
{
    func();
}
