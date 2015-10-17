//
//  test8-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/14.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject{
    int x;
}

-(void) initVar;
-(void) printVar;

@end

@implementation ClassA

-(void) initVar {
    x = 100;
}

-(void) printVar {
    NSLog(@"x = %i", x);
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

@interface ClassC : ClassB

-(void) initVar;

@end

@implementation ClassC

-(void) initVar {
    x = 300;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [a initVar];
        [a printVar];
        
        [b initVar];
        [b printVar];
        
        [c initVar];
        [c printVar];
    }
    return 0;
}