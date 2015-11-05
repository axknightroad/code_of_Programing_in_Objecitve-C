//
//  Exericises13-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Data.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Data *today = [[Data alloc] initWithMonth:12 andDay:30 andYear:2004];
        Data *nextDay = [today dateUpdate];
        [nextDay print];
    }
    
    return 0;
}
