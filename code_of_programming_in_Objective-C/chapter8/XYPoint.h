//
//  XYPoint.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>

@interface XYPoint : NSObject <NSCopying>

@property double x, y;

-(void) setX: (double) xVal andY: (double) yVal;

-(double) distance: (XYPoint *) pt;

-(void) print;

@end
