//
//  Program16-5.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/14.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
// Some basic path operation

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *fName = @"path.m";
        NSFileManager *fm;
        NSString *path, *tempdir, *extension, *homedir, *fullpath;
        NSArray *components;
        
        fm = [NSFileManager defaultManager];
        
        // Get the temporary working directory
        tempdir = NSTemporaryDirectory();
        
        NSLog(@"Temporary Directory is %@", tempdir);
        
        // Extra the base directory from current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@", [path lastPathComponent]);
        
        // Create a full path to the file fName in current directory
        fullpath = [path stringByAppendingPathComponent:fName];
        NSLog(@"fullpath to %@ is %@", fName, fullpath);
        
        //Get the filename extension
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);
        
        //Get user's home directory
        homedir = NSHomeDirectory();
        NSLog(@"Your home directory is %@", homedir);
        
        //Divide a path into its components
        components = [homedir pathComponents];
        
        for (path in components) {
            NSLog(@"%@", path);
        }
    }
    
    return 0;
}
