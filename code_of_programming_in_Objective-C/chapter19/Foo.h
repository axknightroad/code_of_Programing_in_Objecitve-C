//
//  Foo.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/19.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>

@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;

@end
