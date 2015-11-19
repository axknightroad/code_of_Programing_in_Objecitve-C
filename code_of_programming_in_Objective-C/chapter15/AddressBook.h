//
//  AddressBook.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/7.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject <NSCopying, NSCoding>

@property(nonatomic, copy) NSString *bookName;
@property(nonatomic, strong) NSMutableArray *book;

- (instancetype)initWithName:(NSString *)name;

- (void)addCard:(AddressCard *)theCard;
- (void)removeCard:(AddressCard *)theCard;

- (NSUInteger)entries;
- (void)list;

- (void)sort;

- (NSMutableArray *)lookup:(NSString *)theName;

- (BOOL)removeName:(NSString *)theName;

@end
