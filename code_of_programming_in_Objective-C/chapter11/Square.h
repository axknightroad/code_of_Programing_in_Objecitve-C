//
//  Square.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject

-(instancetype) initWithSide: (int) s;
-(void) setSide: (int) n;
-(int) side;
-(int) area;
-(int) perimeter;

-(instancetype) init;


@end
