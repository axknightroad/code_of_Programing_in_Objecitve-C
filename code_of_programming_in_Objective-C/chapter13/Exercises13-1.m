//
//  Exercises13-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/3.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

double averageOfDouble(double input[]) {
    double sum = 0;
    
    for (int i = 0; i < 10; input++, i++)
        sum += *input;
    
    return sum / 10;
}

int main(int argc, char *argv[]) {
    @autoreleasepool {
        double temp[10], result;
    
        for (int i = 0; i < 10; i++)
            temp[i] = i + 1;
        
        result = averageOfDouble(temp);
        
        printf("%lf  %lf\n", result, temp[0]);
    }
    
    return 0;
}