import std.stdio, std.algorithm, std.conv, std.experimental.logger;
import std.string, std.array;

string[] field = ["ox-",
                  "oxx",
                  "oo-"];

void main()
{
    foreach(int i;0..field.length)
        writeln(field[i]);
}