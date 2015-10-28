//
//  Rectangle.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/11.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "GraphicObject.h"
#import "XYPoint.h"

@interface Rectangle : GraphicObject

@property double width, heigtht;
-(double) area;
-(double) perimeter;
-(void) setWidth: (double) w andHeight: (double) h;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) translate: (XYPoint *) pt;
-(BOOL) containsPoint: (XYPoint *) aPoint;
-(Rectangle *) intersect: (Rectangle *) rect;
-(void) draw;

-(id) initWithWidth: (int) w andHeigth: (int) h;

-(instancetype) init;

@end
