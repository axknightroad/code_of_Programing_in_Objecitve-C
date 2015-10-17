//
//  codeList8-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide: 5];
        
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Preimeter = %i",
              [mySquare area], [mySquare perimeter]);
    }
    return 0;
}