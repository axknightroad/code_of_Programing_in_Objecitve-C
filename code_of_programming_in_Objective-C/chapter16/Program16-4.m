//
//  Program16-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/14.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
// Enumerate the contens of a directory

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];
        
        // Get current working directory path
        path = [fm currentDirectoryPath];
        
        // Enumerate the directory
        dirEnum = [fm enumeratorAtPath:path];
        
        NSLog(@"Contents of %@", path);
        
        while ((path = [dirEnum nextObject])) {
            NSLog(@"%@", path);
        }
        
        //Another way to enumerate a directory
        dirArray = [fm contentsOfDirectoryAtPath:
                    [fm currentDirectoryPath] error:NULL];
        NSLog(@"Contents using contentsOfDirectoryAtPath:error:");
        for (path in dirArray) {
            NSLog(@"%@",path);
        }
    }
    
    return 0;
}