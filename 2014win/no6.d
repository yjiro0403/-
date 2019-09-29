import std.stdio, std.math;
import std.bigint;

BigInt Root(int val){
    BigInt ans;
    BigInt num = BigInt(val);
    BigInt calc=num;
    BIgInt x;
    
    foreach(int i; 0..5){
        int i;
        for(i=0; (x+BigInt(i))*i < calc; i++){
        };

        //reload ans
        ans = (ans*10) + (2*i);
        x = ans*10;
        
        //reload calc
        calc = (calc-((x+BigInt(i))*i))*100;
        assert(calc >= 0);
        
        writeln(ans);
    }
    
    //assert(ans>2.236);
    //assert(ans<2.237);

    return ans;
}

void fi(){
    writeln((1+Root(5))/2);
}

void main()
{
    writeln(sqrt(cast(double)5));
    //writeln((1+sqrt(cast(double)5))/2);

    fi();
}