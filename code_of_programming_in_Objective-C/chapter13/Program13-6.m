//
//  Program13-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        void (^printMessage)(void) =
        ^(void) {
            NSLog(@"Hello World!");
        };
        
        printMessage();
    }
    
    return 0;
}