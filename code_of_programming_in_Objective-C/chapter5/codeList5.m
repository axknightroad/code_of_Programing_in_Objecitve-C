//
//  codeList5.m
//  prog1
//
//  Created by axel on 15/9/20.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, count, turn;
        
        NSLog(@"How many counts do you want?");
        scanf("%i", &turn);
        
        for (count = 0; count < turn; count++) {
        
            triangularNumber = 0;
        
            NSLog(@"what triangular number do you want?");
            scanf("%i", &number);
        
            for (n = 1; n <=number; n++) {
                triangularNumber += n;
            }
        
            NSLog(@"triangular number %i is %i", number, triangularNumber);
        }
    }
    
    return 0;
}