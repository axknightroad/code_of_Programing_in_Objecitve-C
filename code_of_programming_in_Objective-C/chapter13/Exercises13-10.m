//
//  Exercises13-10.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

void  (^exchange) (int*, int*) =
^(int *pint1, int *pint2) {
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
};

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int i1 = 5, i2 = 6, *p1 = &i1, *p2 = &i2;
        
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(p1, p2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(&i1, &i2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
    }
    
    return 0;
}