//
//  Data.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property int day, month, year;

-(Data *) dateUpdate;

-(void) print;

-(void) setMonth:(int)month andDay: (int)day andYear: (int) year;

-(instancetype) initWithMonth:(int)m andDay: (int) d andYear: (int) y;

-(instancetype) init;


@end
