//
//  Calculator+Trig.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Calculator+Trig.h"

@implementation Calculator (Trig)

-(double) sin {
    return sin(M_PI * self.accumulator / 180);
}

-(double) cos {
    return cos(M_PI * self.accumulator / 180);
}

-(double) tan {
    return tan(M_PI * self.accumulator / 180);
}

@end
