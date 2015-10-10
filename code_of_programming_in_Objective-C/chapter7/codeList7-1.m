//
//  codeList7-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/8.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }
    
    return 0;
}
