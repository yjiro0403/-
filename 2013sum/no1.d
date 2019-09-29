import std.stdio, std.algorithm, std.array, std.string;
import std.file;

int[string] command;
int[char] op1;
int[char] op2;

void main()
{
    string[] text = splitLines(readText("prog1.txt"));
    foreach(int i, string line; text){
        string[] str = text[i].split;
        writeln(str[1]);
    }
        
}