//
//  AddressCard.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/6.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
//    NSString *name;
//    NSString *email;
//}

@synthesize firstName, lastName, address, email, phoneNumber;

//- (void)setName:(NSString *)theName {
//    if (name != theName)
//        name = [NSString stringWithString: theName];
//}
//
//- (void)setEmail:(NSString *)theEmail {
//    if (email != theEmail)
//        email = [NSString stringWithString: theEmail];
//}
//
//- (NSString *)name {
//    return name;
//}
//
//- (NSString *)email {
//    return email;
//}

- (void)print {
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-10s %-20s |", [firstName UTF8String], [lastName UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|  %-31s |", [address UTF8String]);
    NSLog(@"|  %-31s |", [phoneNumber UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       O                  O       |");
    NSLog(@"====================================");
}

- (void)list {
    NSLog(@"%s %s", [firstName UTF8String], [lastName UTF8String]);
    NSLog(@"%-32s", [email UTF8String]);
    NSLog(@"%-50s", [address UTF8String]);
    NSLog(@"%-20s", [phoneNumber UTF8String]);
    NSLog(@" ");
    
}

//- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail {
//    self.name = theName;
//    self.email = theEmail;
//}

- (void)setFirstName:(NSString *)theFirstName
            lastName:(NSString *)thelastName
             address:(NSString *)theAddress
               email:(NSString *)theEmail
         phoneNumber:(NSString *)thePhoneNumber{
    self.firstName = theFirstName;
    self.lastName = thelastName;
    self.address = theAddress;
    self.email = theEmail;
    self.phoneNumber = thePhoneNumber;
}

- (BOOL)isEqual:(AddressCard *)theCard {
    if ([firstName isEqualToString:theCard.firstName] &&
        [lastName isEqualToString:theCard.lastName] &&
        [address isEqualToString:theCard.address] &&
        [email isEqualToString:theCard.email] &&
        [phoneNumber isEqualToString:theCard.phoneNumber])
        return YES;
    else
        return NO;
}

- (NSComparisonResult) compareNames:(id)element{
    return [lastName compare:[element lastName]];
}

-(BOOL)containsName:(NSString *)name {
    NSRange search;
    search = [firstName rangeOfString:name];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [lastName rangeOfString:name];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [email rangeOfString:name];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [address rangeOfString:name];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [phoneNumber rangeOfString:name];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    return NO;
}

- (id)copyWithZone:(NSZone *)zone {
    id newCard = [[[self class] allocWithZone:zone] init];
    [newCard setFirstName:firstName lastName:lastName address:address email:email phoneNumber:phoneNumber];
    return newCard;
}

- (void)assignName:(NSString *)theFristName andLastName:(NSString *)theLastName andAddress:(NSString *)theAddress andEmail:(NSString *)theEmail andPhoneNumber:(NSString *)thePhoneNumber {
    firstName = theFristName;
    lastName = theLastName;
    address = theAddress;
    email = theEmail;
    phoneNumber = thePhoneNumber;
}

@end
