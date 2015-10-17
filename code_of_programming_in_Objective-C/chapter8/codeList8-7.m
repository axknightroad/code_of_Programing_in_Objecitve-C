//
//  codeList8-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/13.
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

//-(void) printVar;
-(void) initVar;

@end

@implementation ClassB

/*
-(void) printVar {
    NSLog(@"x = %i", x);
}
*/
-(void) initVar {
    x = 200;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        
        [a initVar];
        [b initVar];
        
        [a printVar];
        [b printVar];
    }
    return 0;
}