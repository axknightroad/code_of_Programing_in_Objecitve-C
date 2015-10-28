//
//  Exercises10-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/24.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Sunday = 7, Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday
} Day;

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Day today = Tuesday;
        
        NSLog(@"%i", today);
    }
    
    return 0;
}