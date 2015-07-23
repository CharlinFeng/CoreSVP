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
    
}

- (IBAction)btnClick:(id)sender {
    
    [CoreSVP showSVPWithType:CoreSVPTypeLoadingInterface Msg:@"加载中" duration:1 allowEdit:NO beginBlock:nil completeBlock:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CoreSVP showSVPWithType:CoreSVPTypeInfo Msg:@"请注意" duration:2 allowEdit:NO beginBlock:nil completeBlock:nil];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CoreSVP showSVPWithType:CoreSVPTypeError Msg:@"加载失败" duration:2 allowEdit:NO beginBlock:nil completeBlock:nil];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CoreSVP showSVPWithType:CoreSVPTypeSuccess Msg:@"处理成功" duration:2 allowEdit:NO beginBlock:nil completeBlock:nil];
    });
    


}



@end
