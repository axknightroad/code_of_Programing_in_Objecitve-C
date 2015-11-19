//
//  Program19-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/18.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSDictionary *glossary =
        @{@"abstract class":
              @"A class defined so other classes can inherit from it.",
          @"adopt":
              @"To implement all the methods defined in a protocol",
          @"archiving":
              @"Storing an object for later use."};
        
        [NSKeyedArchiver archiveRootObject:glossary toFile:@"glossary.archive"];
    }
    
    return 0;
}
