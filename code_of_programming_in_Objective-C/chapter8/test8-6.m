//
//  test8-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/16.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *pt1 = [[XYPoint alloc] init];
        XYPoint *pt2 = [[XYPoint alloc] init];
        XYPoint *origin = [[XYPoint alloc] init];
        
        [pt1 setX: 2 andY: 2];
        [pt2 setX: 50 andY: 80];
        [origin setX: 0 andY: 0];
        
        myRect.origin = origin;
        [myRect setWidth: 10 andHeight: 20];
        
        NSLog(@"is pt1 in rect? %@ and is pt2 in rect? %@",
              [myRect containsPoint: pt1] ? @"YES": @"NO",
              [myRect containsPoint: pt2] ? @"YES": @"NO");
        
    }
    return 0;
}
