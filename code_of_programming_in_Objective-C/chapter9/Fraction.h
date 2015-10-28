//
//  Fraction.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
//-(Fraction*) add: (Fraction *) f;
-(void) reduce;
//-(id) addId: (id) idValue;

-(Fraction *) initWith: (int) n over: (int) d;

-(instancetype) init;

+(Fraction *) allocF;
+(int) count;

-(int) addCounter;

@end
