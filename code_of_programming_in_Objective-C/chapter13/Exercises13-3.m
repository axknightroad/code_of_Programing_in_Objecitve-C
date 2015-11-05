//
//  Exercises13-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/3.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#define N 149

int sieveOfErastosthenes(int p[], int n) {
    
    memset(p + 2, 0, sizeof(int) * (n-2));
    
    for (int i = 2; i < n/2; i++) {
        if (!p[i])
            for (int j = i; i*j < n; j++)
               p[i*j] = 1;
    }
    
    return 0;
    
}


int main(int argc, char *argv[]) {
    @autoreleasepool {
        int p[N+1], number = 0;
        
        sieveOfErastosthenes(p, N+1);
        
        for (int i = 2; i <= N; i++)
            if (!p[i]) {
                printf("%i\n", i);
                number++;
            }
        printf("%i\n", number);
    }
    
    return 0;
}