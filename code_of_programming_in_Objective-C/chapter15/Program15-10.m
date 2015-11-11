//
//  Program15-10.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/7.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressCard.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        
        [card1 setName:aName];
        [card1 setEmail:aEmail];
        [card1 print];
    }
    
    return 0;
}