//
//  Program13-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int foo = 10;
        
        void (^printFoo)(void) = ^(void) {
            NSLog(@"foo = %i", foo);
        };
        
        printFoo();
        
        foo = 15;
    }
    
    return 0;
}