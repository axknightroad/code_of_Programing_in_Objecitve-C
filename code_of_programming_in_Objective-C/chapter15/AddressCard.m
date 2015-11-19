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

@synthesize name, email;

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
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       O                  O       |");
    NSLog(@"====================================");
}

- (void)list {
    NSLog(@"%-20s %-32s", [name UTF8String], [email UTF8String]);
    
}

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail {
    self.name = theName;
    self.email = theEmail;
}

//- (void)setFirstName:(NSString *)theFirstName
//            lastName:(NSString *)thelastName
//             address:(NSString *)theAddress
//               email:(NSString *)theEmail
//         phoneNumber:(NSString *)thePhoneNumber{
//    self.firstName = theFirstName;
//    self.lastName = thelastName;
//    self.address = theAddress;
//    self.email = theEmail;
//    self.phoneNumber = thePhoneNumber;
//}

- (BOOL)isEqual:(AddressCard *)theCard {
    if ([name isEqualToString:theCard.name] &&
        [email isEqualToString:theCard.email])
        return YES;
    else
        return NO;
}

- (NSComparisonResult) compareNames:(id)element {
    return [name compare:[element name]];
}

- (BOOL)containsName:(NSString *)theName {
    NSRange search;
    search = [name rangeOfString:theName];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [email rangeOfString:theName];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    return NO;
}

- (id)copyWithZone:(NSZone *)zone {
    id newCard = [[[self class] allocWithZone:zone] init];
    [newCard assignName:name andEmail:email];
    return newCard;
}

- (void)assignName:(NSString *)theName andEmail:(NSString *)theEmail {
    name = theName;
    email = theEmail;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:name forKey:@"AddressCardName"];
    [encoder encodeObject:email forKey:@"AddressCardEmail"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    name = [decoder decodeObjectForKey:@"AddressCardName"];
    email = [decoder decodeObjectForKey:@"AddressCardEmail"];
    
    return self;
}

@end
