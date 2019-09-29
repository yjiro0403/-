import stdaf;

void main()
{
    auto fin = File("program.txt");

    int cnt;
    foreach (line; fin.byLine)
        for(size_t i = 0;i < line.length; i++)
            if (line[i] == ':')
                cnt++;

    writeln(cnt);
}