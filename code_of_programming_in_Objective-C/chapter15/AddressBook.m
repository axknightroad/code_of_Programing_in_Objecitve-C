//
//  AddressBook.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/7.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

// set up the AddressBook's name and an empty book

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    
    return self;
}

- (void)addCard:(AddressCard *)theCard {
    [book addObject:theCard];
}

- (void)removeCard:(AddressCard *)theCard {
//    [book removeObjectIdenticalTo:theCard];
    [book removeObject:theCard];
}

- (NSUInteger)entries {
    return [book count];
}

- (void)list {
    NSLog(@"======== Contents of: %@ =========", bookName);
    
//    for (AddressCard *theCard in book)
//        NSLog(@"%-20s    %-32s", [theCard.name UTF8String],
//              [theCard.email UTF8String]);
//    NSLog(@"====================================================");
    
    [book enumerateObjectsUsingBlock:
     ^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
//         NSLog(@"%-20s %s   %-32s", [theCard.firstName UTF8String],
//               [theCard.lastName UTF8String],
//               [theCard.email UTF8String]);
         [theCard list];
     }];
     NSLog(@"====================================================");
    
}

- (NSMutableArray *)lookup:(NSString *)theName {
    NSMutableArray *matchs = [NSMutableArray array];
//    for (AddressCard *nextCard in book) {
//        NSRange search = [nextCard.name rangeOfString:theName];
//        if (search.location != NSNotFound) {
//            [matchs addObject:nextCard];
//        }
//    }
    
    [book indexesOfObjectsPassingTest:
     ^(id obj, NSUInteger idx, BOOL *stop){
//         NSRange search = [[obj name] rangeOfString:theName];
         if ([obj containsName:theName]) {
             [matchs addObject:obj];
             return YES;
         }
         else
             return NO;
     }];
    
    if ([matchs count]) {
        return matchs;
    } else {
        return nil;
    }
}

- (void)sort {
    [book sortUsingSelector:@selector(compareNames:)];
}

- (BOOL)removeName:(NSString *)theName {
    NSMutableArray *matchs = [self lookup:theName];
    
    if ([matchs count] == 1) {
        [book removeObjectIdenticalTo:[matchs firstObject]];
        return YES;
    } else {
        return NO;
    }
}



@end
