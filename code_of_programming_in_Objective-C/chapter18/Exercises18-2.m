//
//  Exercises18-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/18.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"
#import "XYpoint.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        XYPoint *p1, *p2;
        Rectangle *rect1, *rect2;
        
        p1 = [[XYPoint alloc] init];
        [p1 setX:1 andY:1];
        
        rect1 = [[Rectangle alloc] initWithWidth:10 andHeigth:5];
        rect1.origin = p1;
        
        p2 = [p1 copy];
        rect2 = [rect1 copy];
        
        [p1 print];
        [p2 print];
        [rect1 draw];
        [rect2 draw];
        
    }
    
    return 0;
}