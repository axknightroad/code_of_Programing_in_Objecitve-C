//
//  Program15-9.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/6.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableArray *numbers = [NSMutableArray array];
        int i;
        
        // Create an array with the numbers 0-9
        for (i = 0; i < 10; i++) {
            numbers[i] = @(i);
        }
        
        // Sequence through the array and display the values
        for (i = 0; i < 10; i++) {
            NSLog(@"%@", numbers[i]);
        }
        
        // Look how NSlog can display it with a single %@ format
        NSLog(@"====== Using a single NSLog");
        NSLog(@"%@", numbers);
    }
    
    return 0;
}