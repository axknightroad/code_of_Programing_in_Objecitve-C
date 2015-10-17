//
//  Rectangle.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle {
    XYPoint *origin;
}

@synthesize width, heigtht;

-(void) setWidth: (double) w andHeight: (double) h {
    width = w;
    heigtht = h;
}

-(double) area {
    return width * heigtht;
}

-(double) perimeter {
    return (width + heigtht) * 2;
}

-(void) setOrigin: (XYPoint *) pt {
    if (!origin)
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin {
    XYPoint *returnValue = [[XYPoint alloc] init];
    
    returnValue.x = origin.x;
    returnValue.y = origin.y;
    
    return returnValue;
}

-(void) translate: (XYPoint *) pt {
    origin.x += pt.x;
    origin.y += pt.y;
}

-(BOOL) containsPoint: (XYPoint *) aPoint {
    if (aPoint.x <= origin.x + width && aPoint.y <= origin.y + heigtht)
        return YES;
    else
        return NO;
}

-(Rectangle *) intersect: (Rectangle *) rect {
    double aRight = origin.x + width;
    double aLeft = origin.x;
    double aDown = origin.y;
    double aUp = origin.y + heigtht;
    double bRight =  rect.origin.x + rect.width;
    double bLeft = rect.origin.x;
    double bUp = rect.origin.y + rect.heigtht;
    double bDown = rect.origin.y;
    Rectangle *result = [[Rectangle alloc] init];
    XYPoint *o = [[XYPoint alloc] init];
    
    //printf("%f, %f, %f, %f\n", aLeft, aRight, aUp, aDown);
    //printf("%f, %f, %f, %f\n", bLeft, bRight, bUp, bDown);
    
    
    if (aRight < bLeft || bRight < aLeft || aUp < bDown || bUp < aDown) {
        [o setX: 0 andY: 0];
        [result setWidth: 0 andHeight: 0];
        //printf("no\n");
    } else {
        if (aLeft < bLeft) {
            o.x = bLeft;
            result.width = aRight > bRight ? rect.width: aRight - bLeft;
        } else {
            o.x = aLeft;
            result.width = bRight > aRight ? width: bRight - aLeft;
        }
        
        if (aDown < bDown) {
            o.y = bDown;
            result.heigtht = aUp > bUp ? rect.heigtht: aUp -bDown;
        } else {
            o.y = aDown;
            result.heigtht = bUp > aUp ? heigtht: bUp - aDown;
        }
    }
    
    [result setOrigin: o];
    return result;
}

-(void) draw {
    printf(" ");
    for (int i = 0; i < width; i++) {
        printf("-");
    }
    printf("\n");
    for (int i = 0; i < heigtht; i++) {
        printf("|");
        for (int j = 0; j < width; j++) {
            printf(" ");
        }
        printf("|\n");
    }
    printf(" ");
    for (int i = 0; i < width; i++) {
        printf("-");
    }
    printf("\n");
}

@end
