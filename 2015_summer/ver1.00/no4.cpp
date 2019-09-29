#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

typedef struct mat{
  int num;
  char str[256];
} Mat;

int main(void)
{
  std::ifstream ifs("program.txt");
  char str[256];
  Mat strprev[10], strdid[10], temp;
  int i = 0, j, cnt =0, flag = 0, checkcount=0;
  
  if (ifs.fail()){
    std::cerr << "Ž¸”s" << std::endl;
    return 1;
  }
  
  while (ifs.getline(str, 256-1)){
    for(j = 0;j < 10;j++){
      //if(!strcmp(strprev[j].str,str)){
      for(i = 0;strprev[j].str[i] != NULL && str[i] != NULL;i++)
        if (strprev[j].str[i] != str[i]){
          checkcount++;
        }
      if(checkcount < 5){
        cout << strprev[j] << endl;
        cout << str << endl;
        cnt++;
      }
    }

  //sort
  /*
  for(i = 0;i < did_last+1;i++)
    for(j = did_last+1;j > i;j--)
      if(strdid[j-1].num > strdid[j].num){
        temp = strdid[j-1];
        strdid[j-1] = strdid[j];
        strdid[j] =temp;
      }

  //showdata
  for(i = 0;i < did_last;i++)
    if(strcmp(strdid[i].str,strdid[i+1].str)){
      cout << strdid[i].str << endl;
      cnt++;
    }
  */
  cout << cnt << endl;
  
  return 0;
}