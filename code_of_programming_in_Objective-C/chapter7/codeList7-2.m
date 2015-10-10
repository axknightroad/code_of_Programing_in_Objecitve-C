//
//  codeList7-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/9.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "FractionLight.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        FractionLight *myFraction = [[FractionLight alloc] init];
        
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        NSLog(@"The numerator is %i, and the denominator is %i", myFraction.numerator, myFraction.denominator);
    }
    return 0;
}
