//
//  test5-3.m
//  prog1
//
//  Created by axel on 15/9/23.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main( int argc, char *argv[]) {
    @autoreleasepool {
        int n, factorialOfN;
        printf("TABLE OF FACTORIAL OF N\n");
        printf(" N    factorial of N\n");
        printf("---  -----------------\n");
        for (n = 1, factorialOfN = 1; n <= 10; n++) {
            factorialOfN *= n;
            printf("%2i       %-7i\n", n, factorialOfN);
        }
    }
    return 0;
}
