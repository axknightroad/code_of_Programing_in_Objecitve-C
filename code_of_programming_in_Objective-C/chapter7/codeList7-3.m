//
//  codeList7-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/9.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        
        [aFraction setTo: 100 over: 200];
        [aFraction print];
        
        [aFraction setTo: 1 over: 3];
        [aFraction print];
        
    }
    return 0;
}
