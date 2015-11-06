//
//  Program15-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/6.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    int i;
    @autoreleasepool {
        // Create an array to contain the month names
        
        NSArray *monthNames = [NSArray arrayWithObjects:
                               @"January", @"February", @"March",
                               @"April", @"May", @"June",
                               @"July", @"August", @"September",
                               @"October", @"November", @"December", nil];
        
        // Now list all the elements in the array
        NSLog(@"Month    Name");
        NSLog(@"=====    =====");
        
        for (i = 0; i < 12; i++)
            NSLog(@" %2i      %@", i + 1, [monthNames objectAtIndex:i]);
    }
    
    return 0;
}