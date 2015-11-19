//
//  Exercises19-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int p, d, isPrime;
        NSMutableArray *primesArray = [NSMutableArray array];
        
        for (p = 2; p <= 50; p++) {
            isPrime = YES;
            
            for (d = 2; d < p; d++) {
                if (p % d == 0)
                    isPrime = NO;
            }
            if (isPrime == YES) {
                NSLog(@"%i", p);
                [primesArray addObject:[NSNumber numberWithInt:p]];
            }
        }
        [primesArray writeToFile:@"primes.pl" atomically:YES];
    }
    return 0;
}