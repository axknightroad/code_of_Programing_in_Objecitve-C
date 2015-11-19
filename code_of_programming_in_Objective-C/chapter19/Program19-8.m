//
//  Program19-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Foo *myFoo1 = [[Foo alloc] init];
        Foo *myFoo2;
        
        myFoo1.strVal = @"This is the string";
        myFoo1.intVal = 12345;
        myFoo1.floatVal = 98.6;
        
        [NSKeyedArchiver archiveRootObject:myFoo1 toFile:@"foo.arch"];
        
        myFoo2 = [NSKeyedUnarchiver unarchiveObjectWithFile:@"foo.arch"];
        NSLog(@"%@\n%i\n%g", myFoo2.strVal, myFoo2.intVal, myFoo2.floatVal);
        
    }
    
    return 0;
}
