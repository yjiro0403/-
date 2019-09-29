import std.stdio, std.algorithm, std.array, std.string;
import std.file, std.conv;

int[string] val;

void main()
{
    string[] text = splitLines(readText("prog2.txt"));
    int i;
    while(i < text.length){
        string[] str = text[i].split;
        //read command
        switch (str[0]) {
        case "ADD":
            if(isNumeric(str[1])){
                //doing 4 numer
                val[str[2]] += str[1].to!int;
            } else {
                val[str[2]] += val[str[1]];
            }
            break;
        case "CMP":
            break;
        case "PRN":
            writefln("%s = %d | %s = %d",str[1],val[str[1]],str[2],val[str[2]]);
            return;
        case "SET":
            if(isNumeric(str[2])){
                //doing 4 numer
                val[str[1]] = str[2].to!int;
            } else {
                val[str[1]] = val[str[2]];
            }

            break;
        default:
            throw new Exception("unknown command");
        }
        i++;
    }
}