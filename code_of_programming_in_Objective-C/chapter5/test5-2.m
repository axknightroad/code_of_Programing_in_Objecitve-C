//
//  test5-2.m
//  prog1
//
//  Created by axel on 15/9/23.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main( int argc, char *argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        printf("TABLE OF TRIANGULAR NUMBERS\n");
        printf(" N    Sum from 1 to N\n");
        printf("---  ------------------\n");
        for (n = 5; n <= 50; n+=5) {
            triangularNumber = n * (n + 1) / 2;
            printf("%2i          %4i\n", n, triangularNumber);
        }
        
    }
    return 0;
}