//
//  Circle.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/15.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "GraphicObject.h"
#import "XYPoint.h"

@interface Circle : GraphicObject

@property double radius;

-(double) area;
-(double) perimeter;

-(void) setCenter: (XYPoint *) c;
-(XYPoint *) center;

@end
