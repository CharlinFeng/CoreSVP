//
//  ViewController.m
//  CoreSVP
//
//  Created by muxi on 15/3/6.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "ViewController.h"
#import "CoreSVP.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnClick:(id)sender {
    

    [CoreSVP showProgess:1 Msg:@"加载中" maskType:SVProgressHUDMaskTypeGradient];
 
}




@end
