//
//  Program13-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/29.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        char word[] = { 'H', 'e', 'l', 'l', 'o', '!', '\0' };
        int i;
        
        for (i = 0; i < 6; i++) {
            NSLog(@"%c", word[i]);
        }
        
        NSLog(@"%s", word);
    }
    
    return 0;
}


