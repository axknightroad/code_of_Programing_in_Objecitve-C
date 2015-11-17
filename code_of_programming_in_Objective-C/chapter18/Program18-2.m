//
//  Program18-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray =
        [NSMutableArray arrayWithObjects:
         [NSMutableString stringWithString:@"one"],
         [NSMutableString stringWithString:@"two"],
         [NSMutableString stringWithString:@"three"],
         nil];
        
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }
        
        // make a copy, then change one of the string
        dataArray2 = [dataArray mutableCopy];
        //mStr = dataArray[0];
        //[mStr appendString:@"ONE"];
        dataArray[0] = [NSMutableString stringWithString:@"fff"];
        
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
