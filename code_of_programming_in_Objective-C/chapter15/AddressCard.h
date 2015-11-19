//
//  AddressCard.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/6.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AddressCard : NSObject <NSCopying, NSCoding>

@property(copy, nonatomic) NSString *name, *email;

//- (void)setName:(NSString *)theName;
//- (void)setEmail:(NSString *)theEmail;
//- (NSString *)name;
//- (NSString *)email;

- (void)print;
- (void)list;
- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail;

- (BOOL)containsName:(NSString*)theName;

- (NSComparisonResult)compareNames:(id)element;

- (void)assignName:(NSString *)theName andEmail:(NSString *)theEmail;

@end