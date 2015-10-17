//
//  codeList8-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        
        [myRect setWidth: 5 andHeight: 8];
        
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.heigtht);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}
