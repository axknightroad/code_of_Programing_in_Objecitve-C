//
//  Calculator.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//累加方法
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) mulitply: (double) value;
-(void) divide: (double) value;



@end
