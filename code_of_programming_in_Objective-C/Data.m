//
//  Data.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Data.h"

#define IS_LEAP_YEAR(x) (((x) % 4) == 0 && ( ((x) % 100) != 0 || ((x) % 400) \
                            == 0))

@implementation Data

-(void) print {
    NSLog(@"%i/%i/%i", self.month, self.day, self.year);
}

-(Data *) dateUpdate {
    Data __block *nextDay = [[Data alloc] init];
    
    void (^thisMonth)(void) = ^(void) {
        nextDay.day = self.day + 1;
        nextDay.month = self.month;
        nextDay.year = self.year;
    };
    
    void (^nextMonth)(void) = ^(void) {
        nextDay.day = 1;
        nextDay.month = self.month + 1;
        nextDay.year = self.year;
    };
    
    void (^nextYeat)(void) = ^(void) {
        nextDay.day = 1;
        nextDay.month = 1;
        nextDay.year = self.year + 1;
    };
    
    
    switch (self.month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
            if (self.day < 31)
                thisMonth();
            else
                nextMonth();
            break;
            
        case 4:
        case 6:
        case 9:
        case 11:
            if (self.day < 30)
                thisMonth();
            else
                nextMonth();
            break;
            
        case 2:
            if ( (IS_LEAP_YEAR(self.year) && self.day < 29) || (!IS_LEAP_YEAR(self.year) && self.day < 28))
                thisMonth();
            else
                nextMonth();
            break;
        case 12:
            if (self.day < 31)
                thisMonth();
            else
                nextYeat();
        default:
            break;
    }
    
    return nextDay;
}

-(void) setMonth:(int)month andDay:(int)day andYear:(int)year {
    self.month = month;
    self.day = day;
    self.year = year;
}

-(instancetype) initWithMonth:(int)m andDay:(int)d andYear:(int)y {
    self = [super init];
    [self setMonth:m andDay:d andYear:y];
    
    return self;
}

-(instancetype) init {
    return [self initWithMonth:1 andDay:1 andYear:1977];
}



@end
