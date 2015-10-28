//
//  Square.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide: (int)s {
    [self setWidth: s andHeight: s];
}

-(int) side {
    return self.width;
}

-(id) initWithSide:(int)s {
    return [super initWithWidth: s andHeigth: s];
}

-(instancetype) init {
    return [self initWithSide: 0];
}

@end
