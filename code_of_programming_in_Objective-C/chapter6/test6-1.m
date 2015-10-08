//
//  test6-1.m
//  prog1
//
//  Created by Axel Han on 15/10/6.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int a, b;
        NSLog(@"Please enter two numbers:");
        scanf("%i %i", &a, &b);
        
        if (a % b == 0)
            NSLog(@"%i can be divisible by %i.", a, b);
        else
            NSLog(@"%i can't be divisible by %i.", a, b);
    }
    
    return 0;
}