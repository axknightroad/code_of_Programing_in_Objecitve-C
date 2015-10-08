//
//  codeList5-6.m
//  prog1
//
//  Created by axel on 15/9/22.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main( int argc, char *argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative intergers.");
        scanf("%u%u", &u, &v);
        
        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog(@"Their greatest common divisor is %u", u);
    }
    
    return 0;
}