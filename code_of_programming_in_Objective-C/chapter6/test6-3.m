//
//  test6-3.m
//  prog1
//
//  Created by Axel Han on 15/10/6.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end


@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    if (!denominator)
        NSLog(@"%g", NAN);
    else if (!numerator)
        NSLog(@"0");
    else if (numerator % denominator == 0)
        NSLog(@"%i", numerator / denominator);
    else
        NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator: 4];
        [aFraction setDenominator: 2];
       // [bFraction setNumerator: 0];
       // [bFraction setDenominator: 1];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
    }
    return 0;
}