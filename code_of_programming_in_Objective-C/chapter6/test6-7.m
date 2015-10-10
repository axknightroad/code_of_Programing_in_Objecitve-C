//
//  test6-7.m
//  prog1
//
//  Created by Axel Han on 15/10/8.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int p, d, isPrime;
        
        for (p = 2; p <= 50; p++) {
            if (p % 2 == 0) {
                isPrime = NO;
                continue;
            } else {
                isPrime = YES;
            }
            isPrime = YES;
            
            for (d = 2; d < p && isPrime; d++) {
                if (p % d == 0)
                    isPrime = NO;
            }
            if (isPrime == YES)
                NSLog(@"%i", p);
        }
    }
    return 0;
}