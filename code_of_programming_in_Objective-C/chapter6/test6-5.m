//
//  test6-5.m
//  prog1
//
//  Created by Axel Han on 15/10/8.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main( int argc, char *argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        BOOL isNegative = NO;
        right_digit = 0;
        if (number < 0) {
            isNegative = YES;
            number = -number;
        }
        do {
            right_digit = number % 10;
            number /= 10;
            printf("%i", right_digit);
        } while (number != 0);
        if (isNegative) {
            printf("-");
        }
        printf("\n");
    }
    return 0;
}