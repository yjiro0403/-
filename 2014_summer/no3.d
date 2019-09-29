import stdaf;

const double a = 10/3;
const double b = a/2.0 * sqrt(3.0);

double fcof()
{
    double triangle = 10*5*sqrt(3.0)/2;
    double a = 10/3;
    double area = triangle + (a*a/2*sqrt(3.0));

    return area;
}

void main(string[] args)
{
    //writeln((f1(args[1].to!int)/f0(args[1].to!int))/4);
    writeln(fcof());
}