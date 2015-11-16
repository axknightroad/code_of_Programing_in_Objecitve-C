//
//  Program16-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/15.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
// Implement a basic copy


#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];
        
        // check for two arguments on the command line
        
        if ([args count] != 3) {
            NSLog(@"Usage: %@ sec dest", [proc processName]);
            return 1;
        }
        
        source = args[1];
        dest = args[2];
        
        //Make sure the source file cna be read
        if (![fm isReadableFileAtPath:source]) {
            NSLog(@"Can't read %@", source);
            return 2;
        }
        
        // see if the destination file is a directory
        // if it is, add the source to the end of destination
        
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        
        if (isDir) {
            dest = [dest stringByAppendingPathComponent:
                    [source lastPathComponent]];
        }
        
        //remove the destination file if it already exists
        [fm removeItemAtPath:dest error:NULL];
        
        //okay, time to perform the copy
        if (![fm copyItemAtPath:source toPath:dest error:NULL]) {
            NSLog(@"Copy failed!");
            return 3;
        }
        
        NSLog(@"Copy of %@ to %@ succeeded!", source, dest);
    }
    
    return 0;
}