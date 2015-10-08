//
//  codeList6-10.m
//  prog1
//
//  Created by Axel Han on 15/10/6.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int p, d, isPrime;
        
        for (p = 2; p <= 50; p++) {
            isPrime = YES;
            
            for (d = 2; d < p; d++) {
                if (p % d == 0)
                    isPrime = NO;
            }
            if (isPrime == YES)
                NSLog(@"%i", p);
        }
    }
    return 0;
}