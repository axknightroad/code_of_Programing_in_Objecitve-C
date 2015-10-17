//
//  Triangle.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/16.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "GraphicObject.h"
#import "XYPoint.h"

@interface Triangle : GraphicObject

-(double) area;
-(double) perimeter;

-(void) setVertexA: (XYPoint *) aVal andVertexB: (XYPoint *) bVal andVertexC: (XYPoint *) cVal;

-(XYPoint *) vertexA;
-(XYPoint *) vertexB;
-(XYPoint *) vertexC;

-(double) lineAB;
-(double) lineBC;
-(double) lineAC;

@end
