//
//  test9-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"
#import "Complex.h"
#import "Rectangle.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        id dataValue;
        
        Fraction *f1 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];
        
        dataValue = [[Rectangle alloc] init];
        
        [f1 setTo: 2 over: 5];
        [c1 setReal: 10.0 andImaginary: 2.5];
        
        dataValue = f1;
        [dataValue print];
        
        dataValue = c1;
        [dataValue print];
        
       
    }
    return 0;
}
