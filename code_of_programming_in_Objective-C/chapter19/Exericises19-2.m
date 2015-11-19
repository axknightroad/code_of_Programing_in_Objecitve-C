//
//  Exericises19-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableArray *primesArray;
        primesArray = [NSMutableArray arrayWithContentsOfFile:@"primes.pl"];
        NSLog(@"%@",primesArray);
    }
    return 0;
}