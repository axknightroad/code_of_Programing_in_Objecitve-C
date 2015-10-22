//
//  Complex.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print {
    NSLog(@"%g + %gi", real, imaginary);
}

-(Complex *) add: (Complex *) f {
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}

-(void) setReal: (double) a andImaginary: (double) b {
    
    real = a;
    imaginary = b;
}

-(id) addId: (id) idValue {
    Complex *result = [[Complex alloc] init];
    
    result.real = real + [idValue real];
    result.imaginary = imaginary + [idValue imaginary];
    
    id object = result;
    
    return object;
}

@end
