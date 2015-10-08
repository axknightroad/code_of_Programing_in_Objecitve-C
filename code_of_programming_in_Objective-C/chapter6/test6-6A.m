//
//  test6-6A.m
//  prog1
//
//  Created by Axel Han on 15/10/8.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NumberWord : NSObject

-(NumberWord*) previous;
-(NumberWord*) next;
-(int) number;

-(void) setPrevious: (NumberWord*) pre;
-(void) setNext: (NumberWord*) ne;
-(void) setNumber: (int) num;


@end

@implementation NumberWord {
    NumberWord *previous;
    NumberWord *next;
    int number;
}

-(NumberWord*) previous {
    return previous;
}

-(NumberWord*) next {
    return next;
}

-(int) number {
    return number;
}

-(void) setPrevious: (NumberWord *) pre {
    previous = pre;
}

-(void) setNumber: (int) num {
    number = num;
}

-(void) setNext: (NumberWord *) ne {
    next = ne;
}


@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        int number;
        BOOL isFirst = YES;
        NSArray *numberWord = [[NSArray alloc] initWithObjects:
                               @"zero",
                               @"one",
                               @"two",
                               @"three",
                               @"four",
                               @"five",
                               @"six",
                               @"seven",
                               @"eight",
                               @"nine",
                               nil];
        NSLog(@"Please enter a number:");
        scanf("%i",&number);
        NumberWord *now;
        [now setNext: NULL];
        [now setPrevious: NULL];
        [now setNumber: NAN];
        
        do {
            NumberWord *temp = [[NumberWord alloc] init];
            int remainder = number % 10;
            number /= 10;
            [temp setNumber: remainder];
            [temp setPrevious: NULL];
            [temp setNext: NULL];
        
            if (isFirst) {
                now = temp;
                isFirst = NO;
            } else {
                [now setPrevious: temp];
                [temp setNext: now];
                now = temp;
            }
            
        } while (number != 0);
        
        do {
            NSLog(@"%@", [numberWord objectAtIndex: [now number]]);
            now = [now next];
        } while (now);
    }
}