//
//  GraphicObject.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/14.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject {
    BOOL filled;
}

@synthesize fillColor, lineColor;

-(void) setFilled: (BOOL) f {
    filled = f;
}

-(BOOL) isFilled {
    return filled;
}

@end
