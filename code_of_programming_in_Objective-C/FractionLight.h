//
//  FractionLight.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/10.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FractionLight : NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;


@end
