//
//  Exericises13-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        char *message = "Programming in Objective is fun";
        char message2[] = "You said it";
        int x = 100;
        
        /*** set 1 ***/
        NSLog(@"Progrmaming in Objective is fun");
        NSLog(@"%s", "Programming in objective is fun");
        NSLog(@"%s", message);
        
        /***  set 2 ***/
        NSLog(@"You said it");
        NSLog(@"%s", message2);
        NSLog(@"%s", &message2[0]);
        
        /*** set 3 ***/
        NSLog(@"said it");
        NSLog(@"%s", message2 +4);
        NSLog(@"%s", &message2[4]);
    }
    
    return 0;
}
