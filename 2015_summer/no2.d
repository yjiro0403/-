import stdaf;

void main()
{
    auto fin = File("program.txt");

    int i=0;
    foreach(line; fin.byLine){
        i++;
        writefln("%d : %s",i,line);
    }
}
    