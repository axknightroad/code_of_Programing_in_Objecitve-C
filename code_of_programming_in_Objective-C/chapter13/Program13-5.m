//
//  Program13-5.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int gcd(int u, int v) {
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    return u;
}

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int result;
    
        result = gcd(150, 350);
        NSLog(@"The gcd of 150 and 35 is %i", result);
    
        result = gcd(1026, 405);
        NSLog(@"The gcd of 1026 and 405 is %i", result);
    
        NSLog(@"The gcd of 83 and 240 is %i", gcd(83, 240));
    }
    
    return 0;
}