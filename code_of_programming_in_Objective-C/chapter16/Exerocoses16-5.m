//
//  Exerocoses16-5.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TempFiles)

+ (NSString *)temproraryFileName;

@end

@implementation NSString (TempFiles)

+ (NSString *)temproraryFileName {
    NSString *tempName;
    NSProcessInfo  *proc = [NSProcessInfo processInfo];
    tempName = NSTemporaryDirectory();
    tempName = [tempName stringByAppendingString:[proc globallyUniqueString]];
    return tempName;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *path = [NSString temproraryFileName];
        NSLog(@"%@", path);
    }
    
    return 0;
}