//
//  codeList8-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/10.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject{
    int x;
}

-(void) initVar;

@end

@implementation ClassA

-(void) initVar {
    x = 100;
}

@end

@interface ClassB : ClassA

-(void) printVar;

@end

@implementation ClassB

-(void) printVar {
    NSLog(@"x = %i", x);
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        ClassB *b =[[ClassB alloc] init];
        
        [b initVar];
        [b printVar];
    }
    return 0;
}