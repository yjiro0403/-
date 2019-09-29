import std.stdio, std.algorithm, std.string, std.array, std.file;

void main()
{
    string[] text = splitLines(readText("c2.txt"));
    int ct;
    int cnum;
    
    foreach(line; text){
        int i;
        while(i < line.length-3){
            if(isNumeric(line[i..i+3])){
                if(line[i] != '.') {
                    writeln(line[i..i+3]);
                    ct++;
                    i += 3;
                } else {i++;}
            } else {i++;}
        }
    }
    
    writeln(ct);
}