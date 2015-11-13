//
//  Program16-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/13.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

//Some basic directory operations

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *dirName = @"testdir";
        NSString *path;
        NSFileManager *fm;
        
        //Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];
        
        //Get current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        //Create a new directory
        if (![fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL]) {
            NSLog(@"Couldn't create directory");
            return 1;
        }
        
        //Rename the new directory
        if (![fm moveItemAtPath:dirName toPath:@"newdir" error:NULL]) {
            NSLog(@"Directory rename failed!");
            return 2;
        }
        
        //Change directory into the new directory
        if (![fm changeCurrentDirectoryPath:@"newdir"]) {
            NSLog(@"Change directory failed!");
            return 3;
        }
        
        //Now get and display current working directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        NSLog(@"All operations were successful!");
    }
    
    return 0;
}