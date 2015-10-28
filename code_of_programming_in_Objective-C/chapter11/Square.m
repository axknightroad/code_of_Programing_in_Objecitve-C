//
//  Square.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"

@implementation Square {
    Rectangle *rect;
}

-(instancetype) initWithSide: (int) s {
    self = [super init];
    
    if (!rect) {
        rect = [[Rectangle alloc] initWithWidth: s andHeigth: s];
    }
    
    return self;
}

-(void) setSide: (int) n {
    [rect setWidth: n andHeight: n];
}

-(int) side {
    return rect.width;
}

-(int) area {
    return [rect area];
}

-(int) perimeter {
    return [rect perimeter];
}

-(instancetype) init {
    return [self initWithSide: 0];
}


@end
