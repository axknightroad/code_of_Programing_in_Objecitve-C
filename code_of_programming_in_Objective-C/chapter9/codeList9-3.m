//
//  codeList9-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Square.h"

int main(int argc, char* argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        if ([mySquare isMemberOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a member of Square class");
        if ([mySquare isMemberOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a member of Rectangle class");
        if ([mySquare isMemberOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a member of NSObject class");
        
        if ([mySquare isKindOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a kind of Square class");
        if ([mySquare isKindOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of Rectangle class");
        if ([mySquare isKindOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NSObject class");
        
        if ([mySquare respondsToSelector: @selector(setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        if ([mySquare respondsToSelector: @selector(setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        if ([Square respondsToSelector: @selector(alloc)] == YES)
            NSLog(@"Square responds to alloc memtho");
        
        if ([Rectangle instancesRespondToSelector: @selector(setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: Method");
        if ([Square instancesRespondToSelector: @selector(setSide:)] == YES)
            NSLog(@"Instances of Square respond to setside: Method");
        if ([Square isSubclassOfClass: [Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a rectangle");
    }
    return 0;
}

