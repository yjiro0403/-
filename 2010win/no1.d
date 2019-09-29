import std.stdio, std.algorithm, std.file, std.string, std.array;

void main()
{
    string[] text = splitLines(readText("a.txt"));
    int[string] tyoten;

    foreach (line; text) {
        string[] buf = line.split("->");
        //stderr.writeln(buf);
        tyoten[buf[0]] = 0;
        tyoten[buf[1]] = 1;
    }

    writeln(tyoten.length);
}