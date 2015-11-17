//
//  Exercises18-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/18.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSDictionary *dict1, *dict2;
        NSMutableDictionary *mDict;
        
        dict1 = [NSDictionary dictionaryWithObjectsAndKeys:
                 @"one", @"1", @"two", @"2", @"three",@"3", nil];
        dict2 = [dict1 copy];
        mDict = [dict1 mutableCopy];
        mDict[@"1"] = @"one!!";
        
        NSLog(@"%@", dict1);
        NSLog(@"%@", dict2);
        NSLog(@"%@", mDict);
    }
    
    return 0;
}
