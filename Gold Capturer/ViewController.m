//
//  ViewController.m
//  Gold Capturer
//
//  Created by Jiaxing Chen on 2017/11/22.
//  Copyright © 2017年 Jiaxing Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    _Introduction.hidden = YES;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Intro:(UIButton *)sender {
    _Introduction.hidden = NO;
}
@end
