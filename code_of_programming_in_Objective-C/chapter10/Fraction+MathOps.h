//
//  Fraction+MathOps.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/25.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) invert: (Fraction *) f;

@end
