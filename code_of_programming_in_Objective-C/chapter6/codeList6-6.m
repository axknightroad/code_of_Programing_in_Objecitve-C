//
//  codeList6-6.m
//  prog1
//
//  Created by Axel Han on 15/9/24.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int number, sign;
        NSLog(@"Please type in a number: ");
        scanf("%i", &number);
        
        if (number < 0) {
            sign = -1;
        } else if ( number == 0) {
            sign = 0;
        } else {
            sign = 1;
        }
        
        NSLog(@"sign = %i", sign);
    }
    
    return 0;
}
