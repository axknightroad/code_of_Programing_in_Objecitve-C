//
//  codeList6-3.m
//  prog1
//
//  Created by axel on 15/9/23.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int number_to_test, remainder;
        
        NSLog(@"Enter your number to tested: ");
        scanf("%i", &number_to_test);
        
        remainder = number_to_test % 2;
        
        if ( remainder == 0)
            NSLog(@"The number is even.");
        else
            NSLog(@"The number is odd");
    }
    return 0;
}