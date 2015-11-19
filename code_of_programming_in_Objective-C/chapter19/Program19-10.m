//
//  Program19-10.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"
#import "Foo.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSData *dataArea;
        NSKeyedUnarchiver *unarchiver;
        Foo *myFoo1;
        AddressBook *myBook;
        //  Read in the archive and connect an NSKeyedUnarchiver object to it
        dataArea = [NSData dataWithContentsOfFile:@"myArchive"];
        
        if (!dataArea) {
            NSLog(@"Can't read back archive file!");
            return 1;
        }
        
        unarchiver = [[NSKeyedUnarchiver alloc]
                      initForReadingWithData:dataArea];
        
        // Decode the objects we previously stored in the archive
        myBook = [unarchiver decodeObjectForKey:@"myaddrbook"];
        myFoo1 = [unarchiver decodeObjectForKey:@"myfoo1"];
        [unarchiver finishDecoding];
        
        // verify that  the restore was successful
        [myBook list];
        NSLog(@"%@\n%i\n%g", myFoo1.strVal, myFoo1.intVal, myFoo1.floatVal);
    }
    
    return 0;
}