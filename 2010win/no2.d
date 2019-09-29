import std.stdio, std.algorithm, std.file, std.string, std.array;

void main()
{
    string[] text = splitLines(readText("a.txt"));
    string[string] output, input;

    foreach (line; text) {
        string[] buf = line.split("->");
        //stderr.writeln(buf);
        output[buf[0]] ~= buf[1] ~ ' ';
        output[buf[1]] ~= "";
        input[buf[1]] ~= buf[0] ~ ' ';
    }

    int syumax, nyumax;
    string syumax_num, nyumax_num;
    
    foreach (word; output.keys.sort){
        string[] buf = output[word].split();
        if (syumax < buf.length) {
            syumax = buf.length;
            syumax_num = word;
        }
    }

    foreach (word; input.keys.sort){
        string[] buf = input[word].split();
        if (nyumax < buf.length) {
            nyumax = buf.length;
            nyumax_num = word;
        }
    }

    
    writefln("syutsyuryoku_max = %s\n num = %d",syumax_num, syumax);
    writefln("nyuryoku_max = %s\n num = %d",nyumax_num, nyumax);

}