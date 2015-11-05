//
//  Program13-11.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int count = 10, x;
        int *intPtr;
        
        intPtr = &count;
        x = *intPtr;
        
        NSLog(@"count = %i, x = %i", count, x);
    }
    
    return 0;
}