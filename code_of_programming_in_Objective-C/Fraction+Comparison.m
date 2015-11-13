//
//  Fraction+Comparison.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction+Comparison.h"


@implementation Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f {
    Fraction *a = [self sub: f];
    
    if (!a.numerator)
        return YES;
    else
        return NO;
}

-(int) compare: (Fraction *) f {
    Fraction *result = [self sub: f];
    
    if (result.numerator > 0)
        return 1;
    else if (result.numerator < 0)
        return -1;
    else
        return 0;
}

-(BOOL) isLessThanOrEqualTo: (Fraction *) f {
    Fraction *a = [self sub: f];
    
    if (a.numerator <= 0)
        return YES;
    else
        return NO;
}

-(BOOL) isLessThan: (Fraction *) f {
    Fraction *a = [self sub: f];
    
    if (a.numerator < 0)
        return YES;
    else
        return NO;
}

-(BOOL) isGreaterThanOrEqualTo: (Fraction *) f {
    Fraction *a = [self sub: f];
    
    if (a.numerator >= 0)
        return YES;
    else
        return NO;
}

-(BOOL) isGreaterThan: (Fraction *) f {
    Fraction *a = [self sub: f];
    
    if (a.numerator > 0)
        return YES;
    else
        return NO;
}

-(BOOL) isNotEqualTo: (Fraction *) f {
    Fraction *a = [self sub: f];
    
    if (a.numerator != 0)
        return YES;
    else
        return NO;
}

- (NSComparisonResult)comparison:(Fraction *)other {
    Fraction *result = [self sub:other];
    if (result.numerator < 0) {
        return NSOrderedAscending;
    } else if (result.numerator == 0) {
        return NSOrderedSame;
    } else {
        return NSOrderedDescending;
    }
}


@end
