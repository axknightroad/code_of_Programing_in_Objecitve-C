//
//  codeList5-8.m
//  prog1
//
//  Created by axel on 15/9/22.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main( int argc, char *argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        right_digit = 0;
        do {
            right_digit += number % 10;
            number /= 10;
        } while (number != 0);
        printf("%i\n", right_digit);
    }
    return 0;
}