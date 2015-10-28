//
//  Program11.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/27.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"
#import "Fraction+MathOps.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        
        [a print]; NSLog(@" +"); [b print]; NSLog(@"-----");
        result = [a add: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@" -"); [b print]; NSLog(@"------");
        result = [a sub: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@" *"); [b print]; NSLog(@"------");
        result = [a mul: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@" /"); [b print]; NSLog(@"-----");
        result = [a div: b];
        [result print];
        NSLog(@"\n");
    }
    
    return 0;
}