//
//  Program18-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/18.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressCard.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2;
        NSString *s1 = @"test";
        NSString *s2;
        NSMutableString *ms1 = [NSMutableString stringWithString:@"test"];
        NSMutableString *ms2;
        
        [card1 setFirstName:s1 lastName:@"aaa" address:@"aaa" email:@"aaa" phoneNumber:@"aaa"];
        [card1 print];
        card2 = [card1 copy];
      //  [card2 print];
        s1 = @"no";
        //card2 = card1;
        card2.firstName = @"bbb";
        [card1 print];
        [card2 print];
////
//        //s2 = [s1 mutableCopy];
//        s2 = s1;
//        s2 = @"hahah";
//        NSLog(@"%@, %@", s1, s2);
//        ms2 = [ms1 mutableCopy];
//        [ms2 appendString:@"aaa"];
//        NSLog(@"%@, %@", ms1, ms2);
        
    }
    
    return 0;
}
