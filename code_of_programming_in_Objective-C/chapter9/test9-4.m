//
//  test9-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Complex *complex1 = [[Complex alloc] init];
        Complex *complex2 = [[Complex alloc] init];
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        id dataValue1, dataValue2, result;
        
        [complex1 setReal: 1.6 andImaginary: 7.5];
        [complex2 setReal: 6.4 andImaginary: 2.9];
        
        [f1 setTo: 24 over: 51];
        [f2 setTo: 29 over: 43];
        
        dataValue1 = complex1;
        dataValue2 = complex2;
        
        result = [dataValue1 addId: dataValue2];
        [result print];
    }
    
    return 0;
}
