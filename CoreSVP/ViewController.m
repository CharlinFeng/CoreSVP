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

@property (weak, nonatomic) IBOutlet UIView *grayView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(urlNoti:) name:@"SVProgressHUDURLNoti" object:nil];
    
}

-(void)urlNoti:(NSNotification *)noti{
//    NSLog(@"%@",noti);
}

- (IBAction)success:(id)sender {
    CoreSVPSuccess(@"操作成功", ^{
    
        NSLog(@"提示完成");
    })
}

- (IBAction)fail:(id)sender {
    
    
    CoreSVPError(@"操作失败", nil)
}

- (IBAction)info:(id)sender {
    CoreSVPWarning(@"确定要删除？", nil)
}




- (IBAction)btnClick:(id)sender {

    CoreSVPLoading(@"加载中", @"http://4.4.4.4/")
}





@end
