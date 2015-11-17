//
//  Exericises16-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *path, *source, *dest, *lastPathComp;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
//        char *realPath;
        BOOL found = NO;
        
        fm = [NSFileManager defaultManager];
        
        if ([args count] != 3) {
            NSLog(@"Usage: %@ path dest", [proc processName]);
            return 1;
        }
        
        source = args[1];
        dest = args[2];
        source = [source stringByStandardizingPath];
//        realPath = realpath([source cStringUsingEncoding:NSUTF8StringEncoding],
//                            NULL);
//        source = [NSString stringWithCString:realPath
//                                    encoding:NSUTF8StringEncoding];
        NSLog(@"%@", source);
        dirEnum = [fm enumeratorAtPath:source];
        while ((path = [dirEnum nextObject])) {
            lastPathComp = [path lastPathComponent];
            if ([lastPathComp isEqualToString:dest]) {
                source = [source stringByAppendingPathComponent:path];
                NSLog(@"%@", source);
                found = YES;
                break;
            }
        }
        if (!found) {
            NSLog(@"File not found!");
        }
    }
    
    return 0;
}
