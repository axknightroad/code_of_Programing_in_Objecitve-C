//
//  Exercises10-5.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/24.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

typedef Fraction* FractionObj;

int main(int argc, char *argv[]) {
    @autoreleasepool {
        FractionObj f1 = [[Fraction alloc] init],
                    f2 = [[Fraction alloc] init];
        
        [f1 setTo: 1 over: 2];
        [f2 setTo: 3 over: 4];

        [f1 print];
        [f2 print];
        
    }
    
    return 0;
}
