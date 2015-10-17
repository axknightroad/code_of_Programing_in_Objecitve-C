//
//  test8-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/16.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth:10 andHeight:3];
        [myRect draw];
    }
    
    return 0;
}