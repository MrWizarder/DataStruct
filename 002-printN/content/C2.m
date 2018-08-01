//
//  C2.m
//  002-printN
//
//  Created by  on 2018/8/1.
//  Copyright © 2018年 lw. All rights reserved.
//

#import "C2.h"

#define TICK   NSDate *startTime = [NSDate date]
#define TOCK   NSLog(@"Time: %f", -[startTime timeIntervalSinceNow])

@interface C2 ()

@end

@implementation C2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"for 100------------------\n");
    [self forPrintN:100];
    NSLog(@"------------------\n\n");
    
    NSDate *date1 = [NSDate date];
    NSLog(@"Reverse 100------------------\n");
    [self reversePrintN:100];
    NSLog(@"Time: %f", -[date1 timeIntervalSinceNow]);
    NSLog(@"------------------\n\n");
    
    
    
    NSLog(@"for 1000------------------\n");
    [self forPrintN:1000];
    NSLog(@"------------------\n\n");
    
    NSDate *date2 = [NSDate date];
    NSLog(@"Reverse 1000------------------\n");
    [self reversePrintN:1000];
    NSLog(@"Time: %f", -[date2 timeIntervalSinceNow]);
    NSLog(@"------------------\n\n");
    
    
    
    NSLog(@"for 10000------------------\n");
    [self forPrintN:1000];
    NSLog(@"------------------\n\n");
    
    NSDate *date3 = [NSDate date];
    NSLog(@"Reverse 10000------------------\n");
    [self reversePrintN:10000];
    NSLog(@"Time: %f", -[date3 timeIntervalSinceNow]);
    NSLog(@"------------------\n\n");
    
    
    NSLog(@"for 100000------------------\n");
    [self forPrintN:10000];
    NSLog(@"------------------\n\n");
    
    NSDate *date4 = [NSDate date];
    NSLog(@"Reverse 100000------------------\n");
    [self reversePrintN:100000];
    NSLog(@"Time: %f", -[date4 timeIntervalSinceNow]);
    NSLog(@"------------------\n\n");
    
    
    //    NSLog(@"for 1000000------------------\n");
    //    [self forPrintN:100000];
    //    NSLog(@"------------------\n\n");
    //
    //    NSDate *date5 = [NSDate date];
    //    NSLog(@"Reverse 1000000------------------\n");
    //    [self reversePrintN:1000000];
    //    NSLog(@"Time: %f", -[date5 timeIntervalSinceNow]);
    //    NSLog(@"------------------\n\n");
}


- (void)forPrintN:(NSInteger)n {
    TICK;
    for (NSInteger i = 0; i <= n; i++) {
        //        NSLog(@"%ld", n);
    }
    TOCK;
}

- (void)reversePrintN:(NSInteger)n {
    if (n) {
        [self reversePrintN:n-1];
        //        NSLog(@"%ld", n);
    }
    return;
}

@end
