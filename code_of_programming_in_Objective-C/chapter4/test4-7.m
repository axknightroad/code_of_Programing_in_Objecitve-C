//
//  main.m
//  prog1
//
//  Created by axel on 15/8/24.
//  Copyright (c) 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

-(void) setWidth: (int) w;

-(void) setHeight: (int) h;

-(int) width;

-(int) height;

-(int) area;

-(int) perimeter;

@end

@implementation Rectangle {
    int width;
    int height;
}

-(void) setWidth: (int) w {
    width = w;
}

-(void) setHeight: (int) h {
    height = h;
}

-(int) width {
    return width;
}

-(int) height {
    return height;
}

-(int) area {
    return width * height;
}

-(int) perimeter {
    return 2 * (width + height);
}

@end



int main (int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRectangle = [[Rectangle alloc] init];
        
        [myRectangle setWidth: 30];
        [myRectangle setHeight: 50];
        
        NSLog(@"The width of this rectangle is %i,", [myRectangle width]);
        NSLog(@"height is %i,", [myRectangle height]);
        NSLog(@"area is %i,", [myRectangle area]);
        NSLog(@"and perimeter is %i.",[myRectangle perimeter]);
    }
    
    return 0;
}