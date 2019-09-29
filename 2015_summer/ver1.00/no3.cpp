#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(void)
{
  std::ifstream ifs("program.txt");
  char str[256],strprev[256];
  int i = 0;
  
  if (ifs.fail()){
    std::cerr << "Ž¸”s" << std::endl;
    return 1;
  }
  
  while (ifs.getline(str, 256-1)){
    if(!strcmp(strprev,str))
      cout << str << endl;
    memcpy(strprev, str, sizeof(char)*256);
  }

  return 0;
}