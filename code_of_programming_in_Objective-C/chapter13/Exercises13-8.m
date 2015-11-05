//
//  Exercises13-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        printf("%i\n", argc);
        //int n = sizeof(argv) / sizeof(argv[0]);
        for (; *argv; argv++) {
            printf("%s\n", *argv);
        }
    }
    
    return 0;
}