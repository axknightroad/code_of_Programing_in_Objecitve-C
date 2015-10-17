//
//  Circle.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/15.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Circle.h"

#define PI 3.14

@implementation Circle {
    XYPoint *center;
}

@synthesize radius;

-(double) area {
    return PI * radius * radius;
}

-(double) perimeter {
    return PI * 2 * radius;
}

-(void) setCenter: (XYPoint *) c{
    if (!center)
        center = [[XYPoint alloc] init];
    center.x = c.x;
    center.y = c.y;
    
}

-(XYPoint *) center {
    XYPoint *returnValue = [[XYPoint alloc] init];
    
    returnValue.x = center.x;
    returnValue.y = center.y;
    
    return returnValue;
}

@end
