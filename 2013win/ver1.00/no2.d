import std.stdio, std.algorithm, std.string, std.array, std.conv;

string chr;

string uniq_chr(string str){
    string buf=str;

    foreach(int i;0..buf.length-1){
        int j=i+1;
        while(j<buf.length){
            if(buf[i] == buf[j]){
                auto buf2 = buf[0..j]~buf[j+1..buf.length];
                buf = buf2;
            }else{ j++; }
        }
    }
    return buf;
}

void put_ans(string form){
    string[] arr = form.split('&');
    writeln(arr);

    foreach(int i; 0..arr.length)
        chr ~= arr[i];
}

//check varls not [111111]...
/*
bool max_varls_val(bool[] varls_val){
    foreach(int i; 0..varls_val.length)
        if (varls_val[i] == false)
            return false;
    return true;
}*/

bool checkminitf(string varls, string form, int varls_val){
    
    
    foreach(int i; 0..form.length){
        
    }
}

bool checktf(string varls, string[] arr,int varls_val){
    foreach(int i; 0..arr.length){
        if(checkminitf(varls,arr[i],varls_val))
            return true;
    }
    return false;
}

void main()
{
    string[] arr = readln().chomp.split('+');
    writeln(arr);

    //load vals
    string varls;
    foreach(int i; 0..arr.length){
        varls ~= arr[i];
    }
    varls = uniq_chr(varls);

    foreach(int i; 0..varls.length-1)
        if(varls[i]=='&'){
            auto buf = varls[0..i]~varls[i+1..varls.length];
            varls = buf;
        }
    writeln(varls);

    //varls val
    int varls_val;
    int[] varls_vals;
    while (varls_val<pow(2,varls.length)-1){
        //check true or false
        if(checktf(varls,arr,varls_val)){
            //puts true and break
            
        }
        //reload varls_val
        varls_val++;
        //2shin su ni henkan
        
    }
}