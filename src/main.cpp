#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>

#include <linux/fb.h>
int main(int argc, char const *argv[])
{
    const char* fbpath = "/dev/graphics/fb0";
        int fb = open(fbpath, O_RDONLY);
        if (fb >= 0) {
            printf("open ok\n");
        }else{
            printf("open fail\n");
        }
  for(int i = 0; i < 5; ++i)
    std::cout << "Hello World" << std::endl;

  return 0;
}