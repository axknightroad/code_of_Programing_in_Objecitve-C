//
//  test7-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/10.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Complex.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        Complex *resultComplex;
        
        aComplex.real = 1.5;
        aComplex.imaginary = 5.7;
        bComplex.real = 2.9;
        bComplex.imaginary = 4.1;
        
        [aComplex print];
        [bComplex print];
        
        resultComplex =[aComplex add: bComplex];
        [resultComplex print];
    }
    return 0;
}
