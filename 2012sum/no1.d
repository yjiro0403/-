import std.stdio, std.array;

int playerx = 2;

char[9][15] stage = ["|-------|",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|.......|",
                     ];

void main()
{
    stage[14][playerx] = 'X';
    foreach(line; stage)
        writeln(line);
}
