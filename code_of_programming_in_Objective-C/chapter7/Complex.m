//
//  Complex.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/10.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print {
    NSLog(@"%.2f + %.2fi", real, imaginary);
}

-(Complex *) add: (Complex *) complexNum {
    Complex *result = [[Complex alloc] init];
    
    result.real = real + complexNum.real;
    result.imaginary = imaginary + complexNum.imaginary;
    
    return result;
}

@end
