//
//  GraphicObject.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/14.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject 

@property int fillColor, lineColor;

-(void) setFilled: (BOOL) f;

-(BOOL) isFilled;

@end
