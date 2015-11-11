//
//  Progrma15-16.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        // Store three entries in the glossary
        
        [glossary setObject:@"A class defined so other classed can inherit from it"
                     forKey:@"abstract class"];
        
        [glossary setObject:@"To implement all the methods defined in a protocoal"
                     forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use"
                     forKey:@"archiving"];
        
        // Retrieve and display them
        
        NSLog(@"abstract class: %@",
              [glossary objectForKey:@"abstract class"]);
        NSLog(@"adopt: %@",
              [glossary objectForKey:@"adopt"]);
        NSLog(@"archiving :%@",
              [glossary objectForKey:@"archiving"]);
    }
    
    return 0;
}