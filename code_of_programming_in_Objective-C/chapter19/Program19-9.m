//
//  Program19-9.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "AddressBook.h"
#import "Foo.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Foo *myFoo1 = [[Foo alloc] init];
        NSMutableData *dataArea;
        NSKeyedArchiver *archiver;
        AddressBook *myBook;
        
        //  Insert code from Program 19.7 to create an Address Book
        //  in myBook containing four address cards
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
        
        myBook = [AddressBook alloc];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        myBook = [myBook initWithName:@"Linda's Address Book"];
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        [myBook sort];
        
        
        myFoo1.strVal = @"This is the string";
        myFoo1.intVal = 12345;
        myFoo1.floatVal = 98.6;
        
        //  Set up a data area and connect it to an NSKeyedArchiver object
        dataArea = [NSMutableData data];
        
        archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];
        
        //  Now we cna begin to archive objects
        [archiver encodeObject:myBook forKey:@"myaddrbook"];
        [archiver encodeObject:myFoo1 forKey:@"myfoo1"];
        [archiver finishEncoding];
        
        //  Write the archived data area to a file
        if (![dataArea writeToFile:@"myArchive" atomically:YES]) {
            NSLog(@"Archiving failed!");
        }
        
        return 0;

    }
}