//
//  test8-5.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/15.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        Square *mySquare = [[Square alloc] init];
        
        NSLog(@"mySquare w = %f, h = %f", mySquare.width, mySquare.heigtht);
        
        //[myPoint setX: 100 andY: 200];
        
        //[myRect setWidth: 5 andHeight: 8];
        
        //myRect.origin = myPoint;
        
        myRect.filled = YES;

        NSLog(@"Rectangle fill = %i", myRect.fillColor);
        
        NSLog(@"Rectangle w = %f, h = %f", myRect.width, myRect.heigtht);
        
        NSLog(@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Area = %f, Perimeter = %f",
              [myRect area], [myRect perimeter]);
        
        [myPoint setX: 50 andY: 50];
        NSLog(@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
    }
}