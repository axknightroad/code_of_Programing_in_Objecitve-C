//
//  Program16-9.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
//  Read the contents of a file stored at a URL

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://classroomM.com"];
        
        NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSASCIIStringEncoding error:NULL];
        NSLog(@"%@", myHomePage);
    }
    
    return 0;
}
