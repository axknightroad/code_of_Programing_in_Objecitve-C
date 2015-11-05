//
//  Program13-17.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

void copyString(char *to, char *from) {
    while (*from)
        *to++ = *from++;
    *to = '\0';
}

int main(int argc, char *argv[]) {
    @autoreleasepool {
        void copyString(char *to, char *from);
        char string1[] = "A string to be copied.";
        char string2[50];
        
        copyString(string2, string1);
        NSLog(@"%s", string2);
        
        copyString(string2, "So is this");
        NSLog(@"%s", string2);
    }
    
    return 0;
}