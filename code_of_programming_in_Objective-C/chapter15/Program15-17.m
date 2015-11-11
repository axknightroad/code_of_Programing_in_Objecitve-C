//
//  Program15-17.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        // Store three entries in the glossary
        
        glossary[@"abstract class"] =
        @"A class defined so other classed can inherit from it";
        
        glossary[@"adopt"] =
        @"To implement all the methods defined in a protocoal";
        
        glossary[@"archiving"] =
        @"Storing an object for later use";
        
        // Retrieve and display them
        NSLog(@"abstract class: %@", glossary[@"abstract class"]);
        NSLog(@"adopt: %@", glossary[@"adopt"]);
        NSLog(@"archiving: %@", glossary[@"archiving"]);
    }
    
    return 0;
}