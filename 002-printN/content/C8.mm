//
//  C8.m
//  002-printN
//
//  Created by  on 2018/8/2.
//  Copyright © 2018年 lw. All rights reserved.
//

#import "C8.h"
#include <stdio.h>
#include <time.h>


clock_t start, stop;
double duration;



@interface C8 ()

@end

@implementation C8

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    start = clock();
    
    stop = clock();
    duration = ((double)(stop - start))/CLK_TCK;
    printf("ticks1 = %f\n", (double)(stop - start));
    printf("duration1 = %6.2e\n", duration);
}


int MaxSubSeqSum1( int A[], int N)
{
    int ThisSum, MaxSum = 0;
    int i, j, k;
    for (i = 0; i < N; i++) {
        for (j = i; j < N; j++) {
            ThisSum = 0;
            for (k = i; k <= j; k++)
                ThisSum += A[k];
            if (ThisSum > MaxSum)
                MaxSum = ThisSum;
        }
    }
    return MaxSum;
}


int MaxSubseqSum2( int A[], int N)
{
    int ThisSum, MaxSum = 0;
    int i, j;
    for (i = 0; i < N; i++) {
        ThisSum = 0;
        for ( j = i; j < N; j++) {
            ThisSum += A[j];
            if (ThisSum > MaxSum)
                MaxSum = ThisSum;
        }
    }
    return MaxSum;
}


@end
