//
//  Exercoses16-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://bit.ly/aycNwd"];
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfURL:myURL];
        NSLog(@"%@",dic);
    }
    return 0;
}