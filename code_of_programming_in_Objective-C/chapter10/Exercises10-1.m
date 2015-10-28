//
//  Exercises10-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/24.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

//#import "Rectangle.h"
#import "Square.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *r = [[Rectangle alloc] init];
        Square *s = [[Square alloc] init];
        
        printf("rectangle width = %.2f, height = %.2f\n", r.width, r.heigtht);
        printf("square sides = %i\n", s.side);
        
    }
    
    return 0;
}
