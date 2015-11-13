//
//  Program16-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/13.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

// Make a copy of a file

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSData *fileDate;
        
        fm = [NSFileManager defaultManager];
        
        // Read the file newfile2
        fileDate = [fm contentsAtPath:@"newfile2"];
        
        if (!fileDate) {
            NSLog(@"File read failed!");
            return 1;
        }
        
        //Write the data to newfile3
        
        if (![fm createFileAtPath:@"newfile3" contents:fileDate attributes:nil]) {
            NSLog(@"Couldn't create the copy!");
            return 2;
        }
        
        NSLog(@"File copy was successful!");
    }
    
    return 0;
}