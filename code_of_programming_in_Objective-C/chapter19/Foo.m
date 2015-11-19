//
//  Foo.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Foo.h"

@implementation Foo

@synthesize strVal, intVal, floatVal;

-(void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:strVal forKey:@"FoostrVal"];
    [aCoder encodeInt:intVal forKey:@"FoointVal"];
    [aCoder encodeFloat:floatVal forKey:@"FoofloatVal"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    strVal = [aDecoder decodeObjectForKey:@"FoostrVal"];
    intVal = [aDecoder decodeIntForKey:@"FoointVal"];
    floatVal = [aDecoder decodeFloatForKey:@"FoofloatVal"];
    
    return self;
}



@end
