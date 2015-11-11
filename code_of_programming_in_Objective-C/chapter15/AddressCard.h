//
//  AddressCard.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/6.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AddressCard : NSObject

@property(copy, nonatomic) NSString *firstName, *lastName, *address, *email,
*phoneNumber;

//- (void)setName:(NSString *)theName;
//- (void)setEmail:(NSString *)theEmail;
//- (NSString *)name;
//- (NSString *)email;

- (void)print;
- (void)list;
//- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail;
- (void) setFirstName:(NSString *)theFirstName
             lastName:(NSString *)thelastName
              address:(NSString *)theAddress
                email:(NSString *)theEmail
          phoneNumber:(NSString *)thePhoneNumber;

-(BOOL) containsName:(NSString*)name;

- (NSComparisonResult) compareNames:(id)element;

@end