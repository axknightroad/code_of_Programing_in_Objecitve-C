//
//  Exericises11-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction+Comparison.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *fraction1 = [[Fraction alloc] initWith: 1 over: 2];
        Fraction *fraction2 = [[Fraction alloc] initWith: 1 over: 3];
        Fraction *fraction3 = [[Fraction alloc] initWith: 2 over: 4];
        
        printf("is %i/%i = %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction2.numerator, fraction2.denominator,
               [fraction1 isEqualTo: fraction2]? "yes": "no");
        
        printf("is %i/%i = %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction3.numerator, fraction3.denominator,
               [fraction1 isEqualTo: fraction3]? "yes": "no");
        
        printf("is %i/%i <= %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction2.numerator, fraction2.denominator,
               [fraction1 isLessThanOrEqualTo: fraction2]? "yes": "no");
        
        printf("is %i/%i <= %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction3.numerator, fraction3.denominator,
               [fraction1 isLessThanOrEqualTo: fraction3]? "yes": "no");
        
        printf("is %i/%i < %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction2.numerator, fraction2.denominator,
               [fraction1 isLessThan: fraction2]? "yes": "no");
        
        printf("is %i/%i < %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction3.numerator, fraction3.denominator,
               [fraction1 isLessThan: fraction3]? "yes": "no");
        
        printf("is %i/%i >= %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction2.numerator, fraction2.denominator,
               [fraction1 isGreaterThanOrEqualTo: fraction2]? "yes": "no");
        
        printf("is %i/%i >= %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction3.numerator, fraction3.denominator,
               [fraction1 isGreaterThanOrEqualTo: fraction3]? "yes": "no");
        
        printf("is %i/%i > %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction2.numerator, fraction2.denominator,
               [fraction1 isGreaterThan: fraction2]? "yes": "no");
        
        printf("is %i/%i > %i/%i ? %s\n", fraction1.numerator, fraction1.denominator,
               fraction3.numerator, fraction3.denominator,
               [fraction1 isGreaterThan: fraction3]? "yes": "no");
        
    }
    
    return 0;
}