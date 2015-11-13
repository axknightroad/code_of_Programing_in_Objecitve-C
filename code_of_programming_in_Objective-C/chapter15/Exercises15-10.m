//
//  Exercises15-10.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chart : NSObject

@property(nonatomic, strong) NSArray *numberArray;
@property(nonatomic, strong) NSCountedSet *count;

- (instancetype)initWithArray:(NSArray *)theArray;
- (void)generateChart;


@end

@implementation Chart

@synthesize numberArray, count;

- (instancetype)initWithArray:(NSArray *)theArray {
    self = [super init];
    if (self) {
        numberArray = theArray;
        count = [[NSCountedSet alloc] initWithArray:theArray];
    }
    return self;
}

- (void)generateChart {
    printf("========== frequency chart of NSNumber NSArray ==========\n");
    printf("number bar of frequency\n");
    for (NSNumber *number in count) {
        printf("%3d    ",[number intValue]);
        for (int i = 0; i < [count countForObject:number]; i++) {
            printf("=");
        }
        printf("\n");
    }
    printf("=========================================================\n");
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSArray *myArray = @[ @1, @1, @2, @2, @2,
                              @2, @3, @3, @3, @5,
                              @1, @1, @1, @1, @1,
                              @1, @1, @1, @1, @1];
        Chart *mychart = [[Chart alloc] initWithArray:myArray];
        [mychart generateChart];
    }
    
    return 0;
}