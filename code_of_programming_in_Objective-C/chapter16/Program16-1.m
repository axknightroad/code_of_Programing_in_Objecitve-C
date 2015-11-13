//
//  Program16-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/13.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

// Basic File operations
// Assumes the existence of a file called "testfile"
// in the current directory


#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *fName = @"testfile";
        NSFileManager *fm;
        NSDictionary *attr;
        
        // Need to create an instance of the file manger
        fm = [NSFileManager defaultManager];
        
        // Let's make sure our test file exists first
        if (![fm fileExistsAtPath:fName]) {
            NSLog(@"File doesn't exist!");
            return 1;
        }
        
        // now let's make a copy
        if (![fm copyItemAtPath:fName toPath:@"newfile" error:NULL]) {
            NSLog(@"File Copy failed!");
            return 2;
        }
        
        // now let's test to see if the two files are equal
        if (![fm contentsEqualAtPath:fName andPath:@"newfile"]) {
            NSLog(@"Files are Not Equal!");
            return 3;
        }
        
        // Now let's rename the copy
        if (![fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL]) {
            NSLog(@"File rename Failed");
            return 4;
        }
        
        // get the size of the newfile2
        if (!(attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL])) {
            NSLog(@"Could't get file attributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes",
              [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        // And finally, let's delete the original file
        if (![fm removeItemAtPath:fName error:NULL]) {
            NSLog(@"file removal failed");
            return 6;
        }
        
        NSLog(@"All operations were successful");
        
        // Display the contents of he newly created file
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
    }
    
    return 0;
}