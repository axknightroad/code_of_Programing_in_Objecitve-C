//
//  Program13-13.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        struct date {
            int month;
            int day;
            int year;
        };
        
        struct date today, *datePtr;
        
        datePtr = &today;
        datePtr->month = 9;
        datePtr->day = 25;
        datePtr->year = 2014;
        
        NSLog(@"Today's date is %i/%i/%.2i", datePtr->month, datePtr->day, datePtr->year % 100);
    }
    
    return 0;
}