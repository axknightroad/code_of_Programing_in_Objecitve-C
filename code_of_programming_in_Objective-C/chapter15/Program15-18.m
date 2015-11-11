//
//  Program15-18.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSDictionary *glossary =
        [NSDictionary dictionaryWithObjectsAndKeys:
         @"A class defined so other classes can inherit from it",
         @"abstract class",
         @"To implement akk the methods defined in a protocol",
         @"adopt",
         @"Storing an  object for later use",
         @"archiving",
         nil];
        
        // Print all key-value pairs from the dictionary
        for (NSString *key in glossary) {
            NSLog(@"%@: %@", key, [glossary objectForKey:key]);
        }
    }
    
    return 0;
}