//
//  Exericises16-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSString *source, *dest;
        BOOL isDir;
        BOOL isFirstTime = YES;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        unsigned long argsCount;
        
        fm = [NSFileManager defaultManager];
        
        
        // check for more than two arguments on the command line
        argsCount = [args count];
        
        if (argsCount < 3) {
            NSLog(@"Usage: %@ sec1 ... dest", [proc processName]);
            return 1;
        }
        
        dest = args[argsCount - 1];
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        
        if (argsCount > 3) {
            if (!isDir) {
                NSLog(@"dest should be a directory if there are two and more files need to be copied!");
                return 4;
            }
        }
        
        for (unsigned long i = 1; i < argsCount - 1; i++) {
            source = args[i];
            if (!isFirstTime) {
                dest = args[argsCount - 1];
            }
            //Make sure the source file cna be read
            if (![fm isReadableFileAtPath:source]) {
                NSLog(@"Can't read %@", source);
                return 2;
            }
            
            // see if the destination file is a directory
            // if it is, add the source to the end of destination
            
            if (isDir) {
                dest = [dest stringByAppendingPathComponent:
                        [source lastPathComponent]];
            }
            
            //remove the destination file if it already exists
            if (isFirstTime) {
                source = [source stringByStandardizingPath];
                dest = [dest stringByStandardizingPath];
                if ([source isEqualToString:dest]) {
                    NSLog(@"Source can't be equal to dest!");
                    return 5;
                }
                isFirstTime = NO;
            }
            
            [fm removeItemAtPath:dest error:NULL];
            
            //okay, time to perform the copy
            if (![fm copyItemAtPath:source toPath:dest error:NULL]) {
                NSLog(@"Copy failed!");
                return 3;
            }
            
            NSLog(@"Copy of %@ to %@ succeeded!", source, dest);
        }
    }
    return 0;
}