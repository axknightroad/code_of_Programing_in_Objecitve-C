//
//  codeList10-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *a, *b;
        
        a = [[Fraction alloc] initWith: 1 over: 3];
        b = [[Fraction alloc] initWith: 3 over: 7];
        
        [a print];
        [b print];
        
    }
    
    return 0;
}
