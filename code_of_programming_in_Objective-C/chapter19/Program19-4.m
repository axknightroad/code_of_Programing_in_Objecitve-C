//
//  Program19-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/18.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSDictionary *glossary;
        
        glossary = [NSKeyedUnarchiver unarchiveObjectWithFile:@"glossary.archive"];
        for (NSString *key in glossary) {
            NSLog(@"%@: %@", key, glossary[key]);
        }
    }
    
    return 0;
}
