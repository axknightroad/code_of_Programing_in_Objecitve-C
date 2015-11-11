//
//  Exericises15-6.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *aFirstName = @"Julia";
        NSString *aLastName =  @"Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"aaa, aaa, aaa, US";
        NSString *aPhone = @"11111111111";
        
        NSString *bFirstName = @"Tony";
        NSString *bLastName =  @"Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *bAddress = @"bbb, bbb, bbb, US";
        NSString *bPhone = @"22222222222";
        
        NSString *cFirstName = @"SteveAAA";
        NSString *cLastName =  @"Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"ccc, ccc, ccc, US";
        NSString *cPhone = @"33333333333";
        
        
        NSString *dFirstName = @"SteveBBB";
        NSString *dLastName =  @"Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"ddd, ddd, ddd, US";
        NSString *dPhone = @"44444444444";
        
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName:@"Linda's Address Book" ];
        //        AddressCard *myCard;
        NSMutableArray *matchsCards;
        
        // Now set up four address cards
        //        [card1 setName:aName andEmail:aEmail];
        //        [card2 setName:bName andEmail:bEmail];
        //        [card3 setName:cName andEmail:cEmail];
        //        [card4 setName:dName andEmail:dEmail];
        [card1 setFirstName:aFirstName
                   lastName:aLastName
                    address:aAddress
                      email:aEmail
                phoneNumber:aPhone];
        
        [card2 setFirstName:bFirstName
                   lastName:bLastName
                    address:bAddress
                      email:bEmail
                phoneNumber:bPhone];
        
        [card3 setFirstName:cFirstName
                   lastName:cLastName
                    address:cAddress
                      email:cEmail
                phoneNumber:cPhone];
        
        [card4 setFirstName:dFirstName
                   lastName:dLastName
                    address:dAddress
                      email:dEmail
                phoneNumber:dPhone];
        
        
        // Add the cards to the address book
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        [myBook list];
        // Look up a person by name
//        NSLog(@"Lookup: Steve");
//        matchsCards = [myBook lookup:@"Steve"];
//        
//        if (matchsCards) {
//            for (AddressCard *card in matchsCards) {
//                [card print];
//            }
//        } else {
//            NSLog(@"Not found!");
//        }
        
        // Now remove the entry from the phone book
        [myBook removeName:@"SteveCCC"];
        [myBook list]; //verify it's gone
    }
    
    return 0;
}