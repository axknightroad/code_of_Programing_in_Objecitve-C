//
//  test8-0-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/15.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject

@property int x, y;

-(int) xPlusY;

@end

@implementation ClassA

//@synthesize x, y;

-(int) xPlusY {
    return self.x + self.y;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        
        a.x = 1;
        a.y = 1;
        printf("x + y = %i\n", [a xPlusY]);
    }
}
