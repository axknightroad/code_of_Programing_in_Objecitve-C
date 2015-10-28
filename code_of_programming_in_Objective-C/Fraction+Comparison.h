//
//  Fraction+Comparison.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"
#import "Fraction+MathOps.h"

@interface Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;

-(BOOL) isLessThanOrEqualTo: (Fraction *) f;
-(BOOL) isLessThan: (Fraction *) f;
-(BOOL) isGreaterThanOrEqualTo: (Fraction *) f;
-(BOOL) isGreaterThan: (Fraction *) f;
-(BOOL) isNotEqualTo: (Fraction *) f;

@end
