//
//  Exercises12-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MY_MIN(x,y) (((x) < (y)) ? (x) : (y))
#define MAX3(x,y,z) (((x) > (y)) ? ((x) > (z)) ? (x): (z) : ((y) > (z)) ? \
                    (y) : (z) )
#define IS_UPPER_CASE(c) (((c) >= 'A' && (c) <= 'Z'))
#define IS_LOWER_CASE(c) (((c) >= 'a' && (c) <= 'z'))

#define IS_ALPHABETIC(c) (IS_LOWER_CASE(c) || IS_UPPER_CASE(c))

#define IS_DIGIT(c) (((c) >= '0' && (c) <= '9'))
#define IS_SIPCIAL(c) (!(IS_DIGIT(c) || IS_ALPHABETIC(c)))

#define ABSOLUTE_VALUE(x) (((x) >= 0) ? (x) : (-x))

int main(int argc, char *argv[]) {
    @autoreleasepool {
        char c0;
        while (printf("type e to stop\n") && scanf(" %c", &c0) && c0 != 'e') {

            double a, b, c;
            char d;
            
            NSLog(@"type two number");
            scanf(" %lf %lf", &a, &b);
            NSLog(@"%lf is minnium", MY_MIN(a, b));
            
            NSLog(@"type three number");
            scanf(" %lf %lf %lf", &a, &b, &c);
            NSLog(@"%lf is maximum", MAX3(a, b, c));
            
            NSLog(@"type a char");
            scanf(" %c", &d);
            NSLog(@"is upper case? %@", IS_UPPER_CASE(d) ? @"YES" : @"NO");
            
            NSLog(@"type a char");
            scanf(" %c", &d);
            NSLog(@"is alphabetic ? %@", IS_ALPHABETIC(d) ? @"YES" : @"NO");
            
            NSLog(@"type a char");
            scanf(" %c", &d);
            NSLog(@"is special ? %@", IS_SIPCIAL(d) ? @"YES" : @"NO");
            
            NSLog(@"type a number");
            scanf(" %lf", &a);
            NSLog(@"the absolute value is %lf", ABSOLUTE_VALUE(a));
        }
    }
    
    return 0;
}
