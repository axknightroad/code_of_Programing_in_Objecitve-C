//
//  test5-1.m
//  prog1
//
//  Created by axel on 15/9/23.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main( int argc, char *argv[]) {
    @autoreleasepool {
        int n;
        printf("TABLE OF SQUARE OF N AND CUBE OF N\n");
        printf(" N    Square of N    Cube of N\n");
        printf("---  -------------  ------------\n");
        for (n = 1; n <= 10; n++) {
            int son = n * n;
            int con = son * n;
            printf("%2i       %3i           %4i\n", n, son, con);
        }
    }
    return 0;
}