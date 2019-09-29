import std.stdio, std.algorithm, std.string, std.array, std.file;

void main()
{
    string line = readText("s1.txt");
    int ct;
    int cnum;

    int[string] lib;

    stderr.writeln(line);
    
    int i=0;
    while(i < line.length-6){
        if(line.lastIndexOf(line[i..i+6]) != i){
            //if(line[i] != ' '){
                lib[line[i..i+6]] = i;
                i += 5;
            //}
        }
        i++;
    }
    
    
    writeln(lib);
}