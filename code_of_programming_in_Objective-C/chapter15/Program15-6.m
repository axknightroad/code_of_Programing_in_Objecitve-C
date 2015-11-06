//
//  Program15-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/5.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
//  Basic String Operations - Mutable String

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        // Creat mutalbe string from nonmutable
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@", mstr);
        
        // Insert characters
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"%@", mstr);
        
        // Effective concatenation if insert at end
        [mstr insertString:@" and String B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        // Or can use appendString directly
        [mstr appendString:@" and String C"];
        NSLog(@"%@", mstr);
        
        // Delete substring based on range
        [mstr deleteCharactersInRange: NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);
        
        // Find range first and then use it for deletion
        substr = [mstr rangeOfString:@"String B and "];
        
        
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange: substr];
            NSLog(@"%@", mstr);
        }
        
        // Set the mutable string directly
        [mstr setString: @"This is string A"];
        NSLog(@"%@", mstr);
        
        // Now let's replace a range of chars with another
        [mstr replaceCharactersInRange:NSMakeRange(8, 8)
                            withString:@"a mutable string"];
        NSLog(@"%@", mstr);
        
        //Search and replace
        
        search = @"This is";
        replace = @"An example of";
        
        substr = [mstr rangeOfString:search];
        
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr
                                withString:replace];
            NSLog(@"%@", mstr);
        }
        
        // Search and replace all occurrences
        
        search = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString:search];
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr
                                withString:replace];
            substr = [mstr rangeOfString:search];
        }
        
        NSLog(@"%@", mstr);
        
    }
    
    return 0;
}