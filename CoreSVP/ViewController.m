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
    
    [CoreSVP showSVPWithType:CoreSVPTypeLoadingInterface Msg:nil duration:0 allowEdit:NO beginBlock:^{
        NSLog(@"开始");
    } completeBlock:^{
        NSLog(@"结束");
    }];
    
    
//    [CoreSVP showSVPWithType:CoreSVPTypeInfo Msg:@"warnning" duration:3.0f allowEdit:NO beginBlock:^{
//        NSLog(@"开始1");
//    } completeBlock:^{
//        NSLog(@"结束1");
//    }];
//    
//    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CoreSVP showSVPWithType:CoreSVPTypeInfo Msg:@"warnning" duration:3.0f allowEdit:NO beginBlock:^{
            NSLog(@"开始2");
        } completeBlock:^{
            NSLog(@"结束2");
        }];
    });
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [CoreSVP dismiss];
//    });
//    
    
    return;
    
    [SVProgressHUD setViewForExtension:self.grayView];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [CoreSVP showSVPWithType:CoreSVPTypeLoadingInterface Msg:@"加载中" duration:1.0f allowEdit:NO beginBlock:nil completeBlock:nil];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        });
    });
    

//    [CoreSVP showSVPWithType:CoreSVPTypeLoadingInterface Msg:@"加载中" duration:1.0f allowEdit:NO beginBlock:nil completeBlock:nil];
////    [CoreSVP dismiss];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//    });
}





@end
