//
//  Program16-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/16.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
// Append the file "fileA' to the end of "fileB"

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        // Open the file fileA for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"fileA"];
        
        if (!inFile) {
            NSLog(@"Open of fileA for reding failed");
            return 1;
        }
        
        // Open the file fileB for updating
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"fileB"];
        
        if (!outFile) {
            NSLog(@"Open of fileB for writing failed");
            return 2;
        }
        
        // Seel to the end of outFile
        [outFile seekToEndOfFile];
        
        // Read inFile and write its contents to outFile
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData:buffer];
        
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"fileB" encoding:NSUTF8StringEncoding error:NULL]);
    }
    
    return 0;
}
