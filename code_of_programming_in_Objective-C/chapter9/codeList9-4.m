//
//  codeList9-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *f = [[Fraction alloc] init];
        
        @try {
            [f noSuchMethod];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught %@%@", [exception name], [exception reason]);
        }
        NSLog(@"Execution continues!");
    }
    
    return 0;
}
