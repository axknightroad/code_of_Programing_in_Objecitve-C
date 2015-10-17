//
//  codeList8-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100 andY: 200];
        
        [myRect setWidth: 5 andHeight: 8];
        myRect.origin = myPoint;
        
        XYPoint *theOrigin = myRect.origin;
        
        theOrigin.x = 200;
        theOrigin.y = 300;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.heigtht);
        
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Area = %i, Perimeter = %i",
              [myRect area], [myRect perimeter]);
    }
}
