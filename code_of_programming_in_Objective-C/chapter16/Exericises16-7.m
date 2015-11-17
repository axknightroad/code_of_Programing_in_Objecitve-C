//
//  Exericises16-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kBufSize 128

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *output;
        NSData *buffer;
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        if (!inFile) {
            NSLog(@"Open of testfile for reding failed");
            return 1;
        }
        
        output = [NSFileHandle fileHandleWithStandardOutput];
        
        buffer = [inFile readDataOfLength:kBufSize];
        
        [output writeData:buffer];
    }
    return 0;
}
