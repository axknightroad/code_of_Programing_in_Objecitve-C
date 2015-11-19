//
//  Program19-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [AddressBook alloc];
        
        
        // Now set up four address cards
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        myBook = [myBook initWithName:@"Linda's Address Book"];
        
        // Add the cards to the address book
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        // Sort it and list it again
        
        [myBook sort];
        
        if (![NSKeyedArchiver archiveRootObject:myBook toFile:@"addressbook.arch"]) {
            NSLog(@"archiving failed");
        }
    }
    
    return 0;
}