//
//  Exericises16-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *path, *command;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if ([args count] != 3) {
            NSLog(@"Usage: %@ basename|dirname dest", [proc processName]);
            return 1;
        }
        
        command = args[1];
        path = args[2];
        if ([command isEqualToString:@"basename"]) {
            path = [path lastPathComponent];
        } else {
            path = [path stringByDeletingLastPathComponent];
            path = [path stringByStandardizingPath];
            if (![path length]) {
                path =@".";
            }
        }
        NSLog(@"%@", path);
    }
    return 0;
}