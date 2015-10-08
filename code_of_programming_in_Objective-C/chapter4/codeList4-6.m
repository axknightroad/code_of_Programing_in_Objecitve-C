//
//  codeList4-6.m
//  prog1
//
//  Created by axel on 15/9/20.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject

//累加方法
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) mulitply: (double) value;
-(void) divide: (double) value;

@end

@implementation Calculator {
    double accmulator;
}

-(void) setAccmulator: (double) value {
    accmulator = value;
}

-(void) clear {
    accmulator = 0;
}

-(double) accumulator {
    return accmulator;
}

-(void) add: (double) value {
    accmulator += value;
}

-(void) subtract: (double) value {
    accmulator -= value;
}

-(void) mulitply: (double) value {
    accmulator *= value;
}

-(void) divide: (double) value {
    accmulator /= value;
}

@end


int main(int argc, char *argv[]) {
    
    @autoreleasepool {
        
    }
    return 0;
}