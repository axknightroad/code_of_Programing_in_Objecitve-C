//
//  codeList9-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *comResult;
        
        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];
        
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];
        
        [c1 print]; NSLog(@"      +"); [c2 print];
        NSLog(@"------------");
        comResult = [c1 add: c2];
        NSLog(@"\n");
        
        [f1 print]; NSLog(@"   +"); [f2 print];
        NSLog(@"-----");
        fracResult = [f1 add: f2];
        [fracResult print];
    }
    return 0;
}
