import stdaf;

void main()
{
    auto fin = File("program.txt");

    char[] lineprev;
    foreach(line; fin.byLine){
        if (line == lineprev)
            writeln(line);
        lineprev = line;
    }
}