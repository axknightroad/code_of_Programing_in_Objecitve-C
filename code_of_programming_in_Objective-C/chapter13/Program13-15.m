//
//  Program13-15.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int arraySum(int array[], int n) {
    int sum = 0, *ptr;
    int *arrayEnd = array + n;
    
    for (ptr = array; ptr < arrayEnd; ++ptr) {
        sum += *ptr;
    }
    
    return (sum);
}

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int values[10] = { 3, 7, -9, 3, 6, -1, 7, 9, 1, -5 };
        
        NSLog(@"The sum is %i", arraySum(values, 10));
    }
    
    return 0;
}