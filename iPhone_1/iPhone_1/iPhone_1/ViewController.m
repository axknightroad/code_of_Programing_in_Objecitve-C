//
//  ViewController.m
//  iPhone_1
//
//  Created by Axel Han on 15/11/24.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;

- (IBAction)click1 {
    display.text = @"1";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
