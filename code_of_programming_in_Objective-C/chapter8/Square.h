//
//  Square.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle

-(void) setSide: (int) s;
-(int) side;

-(id) initWithSide: (int) s;
-(instancetype) init;

@end
