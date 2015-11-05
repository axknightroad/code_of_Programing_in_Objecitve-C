//
//  Program13-12.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        char c = 'Q';
        char *charPtr = &c;
        
        NSLog(@"%c %c", c, *charPtr);
        
        c = '/';
        NSLog(@"%c %c", c, *charPtr);
        
        *charPtr = '(';
        NSLog(@"%c %c", c, *charPtr);
        
        char *s = "test";
        NSLog(@"%s",s);
        
        char t[5] = "test";
        //char *d = "test";
        s = t;
     //   t[2] = 'r';
        s[2] = 'e';
        if (t == s)
            NSLog(@"%s",s);
    }
    
    return 0;

}