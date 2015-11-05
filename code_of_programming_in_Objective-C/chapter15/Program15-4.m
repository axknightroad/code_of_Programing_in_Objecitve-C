//
//  Program15-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/5.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        // Count the number of characters
        
        NSLog(@"Length of str1: %lu", [str1 length]);
        
        // Copy one string to another
        res = [NSString stringWithString:str1];
        NSLog(@"copy: %@", res);
        
        // Copy one string to  the end of another
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Concatenation: %@", str2);
        // Test if two strings are equal
        
        if ([str1 isEqualToString:res])
            NSLog(@"str1 == res");
        else
            NSLog(@"str1 != res");
        
        // Test if one string is <, == or > than another
        compareResult = [str1 compare: str2];
        
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else
            NSLog(@"str1 > str2");
        
        // Convert a string to uppercase
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);
        
        // convert a string to a lowercse
        res = [str1 lowercaseString];
        NSLog(@"Lowercsew conversion: %@", res);
        
        NSLog(@"Original string: %@", str1);
    }
    
    return 0;
}