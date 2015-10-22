//
//  XYPoint.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (double) xVal andY: (double) yVal {
    x = xVal;
    y = yVal;
}

-(double) distance: (XYPoint *) pt {
    return sqrt(pow(x - pt.x, 2) + pow(y - pt.y, 2));
}

-(void) print {
    NSLog(@"(%g,%g)", x, y);
}

@end
