//
//  Exericises16-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        
        NSLog(@"[proc description] %@", [proc description]);
        NSLog(@"[proc arguments] %@", [proc arguments]);
        NSLog(@"[proc environment] %@", [proc environment]);
        NSLog(@"[proc processIdentifier] %i", [proc processIdentifier]);
        NSLog(@"[proc globallyUniqueString] %@", [proc globallyUniqueString]);
        NSLog(@"[proc processName] %@", [proc processName]);
        NSLog(@"[proc hostName] %@", [proc hostName]);
//        NSLog(@"[proc operatingSystem] %lu", [proc operatingSystem]);
//        NSLog(@"[proc operatingSystemName] %@", [proc operatingSystemName]);
        NSLog(@"[proc operatingSystemVersionString] %@", [proc operatingSystemVersionString]);
        NSLog(@"[proc physicalMemory] %llu", [proc physicalMemory]);
        NSLog(@"[proc processorCount] %lu", [proc processorCount]);
        NSLog(@"[proc activeProcessorCount] %lu", [proc activeProcessorCount]);
        NSLog(@"[proc systemUptime] %f", proc.systemUptime);
    }
    return 0;
}