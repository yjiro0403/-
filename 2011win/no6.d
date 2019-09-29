import std.stdio, std.algorithm, std.conv, std.experimental.logger;
import std.string, std.array;
import std.random;

const int RP = 9; //9kai nyuryoku
const int maruwin = 10;
const int batuwin = 11;

char[3][] field = ["---",
                  "---",
                  "---"];

//nanamegamada

int judge() {
    foreach (int i; 0..2) {
        if (field[i] == "ooo")
            return maruwin;
        if (field[0][i] == 'o' && field[1][i] == 'o'  && field[2][i] == 'o'){
            return maruwin;
        } else if (field[i] == "xxx" ||
               (field[0][i] == 'x' && field[1][i] == 'x' && field[2][i] == 'x')){
            return batuwin;
        }
    }

    return 0;
}

void main()
{
    int i = 0;
    int judge_flag;
    auto r = Random(unpredictableSeed);
    int[2] push;
    
    while (i < 9) {
        if (i % 2 == 0) {
            //player turn
            string[] input = readln().split;
            push = [input[0].to!int, input[1].to!int];
        } else {
            int winflag = 0, loseflag = 0;
            int ct_tate,ct_yoko;

            //losecheck
            foreach (int l;0..field.length) {
                foreach (int j; 0..field.length) {
                    if (field[l][j] == 'o')
                        ct_yoko++;
                    else if (field[l][j]  == 'x') {
                        ct_yoko = 0;
                        break;
                    }
                    if (field[j][l] == 'o')
                        ct_tate++;
                    else if (field[j][l]  == 'x') {
                        ct_tate = 0;
                        break;
                    }
                }
                    
                if(ct_yoko == 2) {
                    loseflag = 1;
                    foreach(int k; 0..field.length)
                        if (field[l][k] == '-') {
                            push = [l,k];
                            //field[l][k] = 'x';
                            break;
                        }
                }
                if(ct_tate == 2) {
                    loseflag = 1;
                    foreach(int k; 0..field.length)
                        if (field[k][l] == '-') {
                            push = [k,l];
                            //field[k][l] = 'x';
                            break;
                        }
                }
                ct_tate = ct_yoko = 0;
            }
            
            //wincheck
            if (loseflag == 0)
            foreach (int l;0..field.length) {
                foreach (int j; 0..field.length) {
                    if (field[l][j] == 'x')
                        ct_yoko++;
                    else if (field[l][j]  == 'o') {
                        ct_yoko = 0;
                        break;
                    }
                    
                    if (field[j][l] == 'x')
                        ct_tate++;
                    else if (field[j][l]  == 'o') {
                        ct_tate = 0;
                        break;
                    }
                }
                
                if(ct_yoko == 2) {
                    winflag = 1;
                    foreach(int k; 0..field.length)
                        if (field[l][k] == '-') {
                            push = [l,k];
                            //field[l][k] = 'x';
                            break;
                        }
                        }
                if(ct_tate == 2) {
                    winflag = 1;
                    foreach(int k; 0..field.length)
                        if (field[k][l] == '-') {
                            push = [k,l];
                            //field[k][l] = 'x';
                            break;
                        }
                }
                
                ct_tate = ct_yoko = 0;
            }
            
            if (winflag == 1 || loseflag == 1) //oitarakateru
                stderr.writeln("flagset");
            else if (field[1][1] == '-')
                push = [1,1];
            else if(field[0][0] == '-')
                push = [0,0];
            else if(field[0][2] == '-')
                push= [0,2];
            else if(field[2][0] == '-')
                push= [2,0];
            else if(field[2][2] == '-')
                push= [2,2];
            else {
            push = [uniform(0, 2, r),uniform(0, 2, r)];
                while (field[push[0]][push[1]] != '-')
                    push = [uniform(0, 2, r),uniform(0, 2, r)];
            }
        }
        
        stderr.write(push[0]);
        stderr.writeln(push[1]);
        
        if (field[push[0]][push[1]] != '-'){
            stderr.writeln("can not put");
            } else if (i % 2 == 0){
                field[push[0]][push[1]] = 'o';
                i++;
            } else {
                field[push[0]][push[1]] = 'x';
                i++;
            }
        
        foreach(int j;0..field.length)
            stderr.writeln(field[j]);
        
        if ((judge_flag = judge()) != 0)
            i = 10;
        
        stderr.writeln(i);
    }
    
    if (judge_flag == 0)
        writeln("drow");
    else if (judge_flag == maruwin)
        writeln("maru WIN");
    else
        writeln("batu WIN");
}