//
//  Exericises19-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        AddressBook *myBook;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        if ([args count] != 2) {
            NSLog(@"Usage: %@ name",[proc processName]);
            return 1;
        }
        myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:args[1]];
        
        [myBook list];
    }
    
    return 0;
}