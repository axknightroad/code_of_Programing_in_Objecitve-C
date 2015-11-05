//
//  Program13-10.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        struct date{
            int month;
            int day;
            int year;
        };
        
        struct date today;
        
        today.month = 9;
        today.day = 25;
        today.year = 2014;
        
        NSLog(@"Todat's date is %i/%i/%.2i", today.month, today.day, today.year % 100);
    }
}