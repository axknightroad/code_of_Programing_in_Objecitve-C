//
//  test8-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/16.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *rect1 = [[Rectangle alloc] init];
        Rectangle *rect2 = [[Rectangle alloc] init];
        XYPoint *origin1 = [[XYPoint alloc] init];
        XYPoint *origin2 = [[XYPoint alloc] init];
        Rectangle *result;
        
        [origin1 setX: 200 andY: 420];
        [rect1 setOrigin: origin1];
        [rect1 setWidth: 250 andHeight: 75];
        
        [origin2 setX: 400 andY: 300];
        [rect2 setOrigin: origin2];
        [rect2 setWidth: 100 andHeight: 180];
        
        result = [rect1 intersect: rect2];
        
        NSLog(@"the origin of result rectangle is (%.2f, %.2f), and its width is %.2f, height is %.2f.",
              result.origin.x,
              result.origin.y,
              result.width,
              result.heigtht);
    }
    return 0;
}