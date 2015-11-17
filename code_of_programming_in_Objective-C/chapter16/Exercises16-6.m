//
//  Exercises16-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kBufSize 10

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        // Open the file testfile for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        if (!inFile) {
            NSLog(@"Open of testfile for reding failed");
            return 1;
        }
        
        // Create the output file first if necessary
        [[NSFileManager defaultManager] createFileAtPath:@"testout"
                                                contents:nil
                                              attributes:nil];
        // Now open outfile for writing
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout"];
        
        if (!outFile) {
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        // Truncate the output file since it may contain data
        [outFile truncateFileAtOffset:0];
        
        // Read the data from inFile and write it to outFile
        buffer = [inFile readDataOfLength:kBufSize];
        
        [outFile writeData:buffer];
        
        // Close the two files
        [inFile closeFile];
        [outFile closeFile];
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);
    }
    return 0;
}