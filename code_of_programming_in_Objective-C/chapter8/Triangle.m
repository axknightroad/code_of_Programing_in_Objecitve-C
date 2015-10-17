//
//  Triangle.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/16.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle {
    XYPoint *vertexA, *vertexB, *vertexC;
    double lineAB, lineBC, lineAC;
}

-(double) area {
    double p = (lineAB + lineBC + lineAC) / 2;
    return sqrt(p * (p - lineAB) * (p - lineBC) * (p - lineAC));
}

-(double) perimeter {
    return lineAB + lineAC + lineBC;
}

-(void) setVertexA:(XYPoint *)aVal andVertexB:(XYPoint *)bVal andVertexC:(XYPoint *)cVal {
    if (!vertexA)
        vertexA = [[XYPoint alloc] init];
    vertexA.x = aVal.x;
    vertexA.y = aVal.y;
    
    if (!vertexB)
        vertexB = [[XYPoint alloc] init];
    vertexB.x = bVal.x;
    vertexB.y = bVal.y;
    
    if (!vertexC)
        vertexC = [[XYPoint alloc] init];
    vertexC.x = cVal.x;
    vertexC.y = cVal.y;
    
    lineAB = [vertexA distance: vertexB];
    lineBC = [vertexB distance: vertexC];
    lineAB = [vertexC distance: vertexA];
}

-(XYPoint *) vertexA {
    XYPoint *returnValue = [[XYPoint alloc] init];
    
    returnValue.x = vertexA.x;
    returnValue.y = vertexA.y;
    
    return returnValue;
}

-(XYPoint *) vertexB {
    XYPoint *returnValue = [[XYPoint alloc] init];
    
    returnValue.x = vertexB.x;
    returnValue.y = vertexB.y;
    
    return returnValue;
}

-(XYPoint *) vertexC {
    XYPoint *returnValue = [[XYPoint alloc] init];
    
    returnValue.x = vertexC.x;
    returnValue.y = vertexC.y;
    
    return returnValue;
}

-(double) lineAB {
    return lineAB;
}

-(double) lineBC {
    return lineBC;
}

-(double) lineAC {
    return lineAC;
}

@end
