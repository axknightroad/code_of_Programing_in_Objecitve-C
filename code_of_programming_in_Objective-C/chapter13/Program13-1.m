//
//  Program13-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/29.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int Fibonacci[15], i;
        
        Fibonacci[0] = 0;
        Fibonacci[1] = 1;
        
        for (i = 2; i < 15; i++) {
            Fibonacci[i] = Fibonacci[i-2] + Fibonacci[i-1];
        }
        
        for (i = 0; i < 15; i++) {
            NSLog(@"%i", Fibonacci[i]);
        }
    } 
    return 0;
}