//
//  Pramgrom18-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                     @"one", @"two",
                                     @"three", @"four", nil];
        NSMutableArray *dataArray2;
        
        // simple assignment
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }
        
        NSLog(@"dataArray2:  ");
        for (NSString *elem in dataArray2) {
            NSLog(@"   %@", elem);
        }
        
        //try a copy, then remove the first element from the copy
        dataArray2 = [dataArray mutableCopy];
        //[dataArray2 removeObjectAtIndex:0];
        dataArray2[0] = @"aaa";

        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }
        
        NSLog(@"dataArray2:  ");
        for (NSString *elem in dataArray2) {
            NSLog(@"   %@", elem);
        }
    }
    
    return 0;
}