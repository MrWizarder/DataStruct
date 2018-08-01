//
//  ViewController.m
//  002-printN
//
//  Created by  on 2018/8/1.
//  Copyright © 2018年 lw. All rights reserved.
//

#import "ViewController.h"


#define TICK   NSDate *startTime = [NSDate date]
#define TOCK   NSLog(@"Time: %f", -[startTime timeIntervalSinceNow])


@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

///--------------------------------------
#pragma mark - UITableViewDataSource
///--------------------------------------

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 103;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *rid = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:rid];
    
    if(cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:rid];
        
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"第 %ld 节", indexPath.row+1];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *classStr = [NSString stringWithFormat:@"C%ld", indexPath.row+1];
    Class cls = NSClassFromString(classStr);
    if (cls) {
        UIViewController *vc = [[cls alloc] init];
        vc.title = [NSString stringWithFormat:@"第 %ld 节", indexPath.row+1];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
}

@end
