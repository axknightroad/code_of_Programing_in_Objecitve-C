//
//  Program19-11.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/20.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSData *data;
        NSMutableArray *dataArray =
        [NSMutableArray arrayWithObjects:
         [NSMutableString stringWithString:@"one"],
         [NSMutableString stringWithString:@"two"],
         [NSMutableString stringWithString:@"three"],
         nil];
        
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        //  Make a deep copy using the archiver
        data = [NSKeyedArchiver archivedDataWithRootObject:dataArray];
        dataArray2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        mStr = dataArray2[0];
        [mStr appendString:@"ONE"];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"%@", elem);
        }
        
        NSLog(@"\ndataArray2: ");
        for (NSString *elem in dataArray2) {
            NSLog(@"%@", elem);
        }
    }
    return 0;
}