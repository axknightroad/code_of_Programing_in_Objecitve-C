//
//  codeList6-1.m
//  prog1
//
//  Created by axel on 15/9/23.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int number;
        
        NSLog(@"Type in your number:");
        scanf("%i", &number);
        
        if (number < 0)
            number = -number;
        
        NSLog(@"The absolutr value is %i", number);
    }
    return 0;
}