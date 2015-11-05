//
//  Program13-9.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        __block int foo = 10;
        
        void (^printFoo)(void) =
        ^(void) {
            NSLog(@"foo = %i", foo);
            foo = 20;
        };
        
        foo = 15;
        printFoo();
        NSLog(@"foo = %i", foo);
    }
    
    return 0;
}