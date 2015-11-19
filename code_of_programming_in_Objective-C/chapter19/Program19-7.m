//
//  Program19-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, char *argv[]) {
    AddressBook *myBook;
    @autoreleasepool {
        myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:@"addressbook.arch"];
        
        [myBook list];
    }
    
    return 0;
}