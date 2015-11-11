//
//  Exericises15-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SECONDS_OF_ONE_DAY (3600*24)

@interface NSDate (ElapsedDays)

- (unsigned long)elapsedDays:(NSDate *)theDate;

@end

@implementation NSDate (ElapsedDays)

- (unsigned long)elapsedDays:(NSDate *)theDate {
    /*
    unsigned long elapsed;
    if ([self compare:theDate] == NSOrderedAscending) {
        elapsed = [theDate timeIntervalSinceDate:self] / SECONDS_OF_ONE_DAY;
    } else {
        elapsed = [self timeIntervalSinceDate:theDate] / SECONDS_OF_ONE_DAY;
    }
    
    return elapsed;
     */
    return ([self compare:theDate] == NSOrderedAscending?
            [theDate timeIntervalSinceDate:self]:
            [self timeIntervalSinceDate:theDate]) / SECONDS_OF_ONE_DAY;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *anotherDay = [NSDate dateWithTimeIntervalSinceNow:
                              SECONDS_OF_ONE_DAY * 4 + 3600 *5];
        unsigned long elapsed;
        
        NSLog(@"%@", now);
        NSLog(@"%@", anotherDay);
        
        elapsed = [anotherDay elapsedDays:now];
        NSLog(@"%lu", elapsed);
    }
    return 0;
}