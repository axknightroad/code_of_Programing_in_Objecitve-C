//
//  codeList6-7.m
//  prog1
//
//  Created by Axel Han on 15/9/30.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        char c;
        NSLog(@"Enter a single character:");
        scanf(" %c", &c);
        
        if ((c >= 'a' && c<='z') || (c >= 'A' && c <= 'Z'))
            NSLog(@"It's a alphabetic character.");
        else if (c >= '0' && c <= '9')
            NSLog(@"It's a digit");
        else
            NSLog(@"It's a special character.");
    }
    
    return 0;
}