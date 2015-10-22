//
//  test9-5.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];
        
        if ([fraction isMemberOfClass: [Complex class]] == YES)
            NSLog(@"fraction is member of Complex"); //no
        if ([complex isMemberOfClass: [NSObject class]] == YES)
            NSLog(@"complex is member of NSObject"); //no
        if ([complex isKindOfClass: [NSObject class]] == YES)
            NSLog(@"complex is kind of NSObject"); //yes
        if ([fraction isKindOfClass: [Fraction class]] == YES)
            NSLog(@"fraction is kind of Fraction"); //yes
        if ([fraction respondsToSelector: @selector(print)] == YES)
            NSLog(@"fraction responds to print Method"); //yes
        if ([complex respondsToSelector: @selector(print)] == YES)
            NSLog(@"complex responds to print Method"); //yes
        if ([number respondsToSelector: @selector(print)] == YES)
            NSLog(@"number responds to print Method"); //yes
        if ([number isKindOfClass: [Complex class]] == YES)
            NSLog(@"number is kind of Complex"); //yes
        if ([[number class] respondsToSelector: @selector(alloc)])
            NSLog(@"class of number responds to alloc Method"); //yes
    }
    
    return 0;
}
