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
    
    [CoreSVP showSVPWithType:CoreSVPTypeInfo Msg:@"网络错误" duration:3 allowEdit:NO beginBlock:^{
        NSLog(@"开始");
    } completeBlock:^{
        NSLog(@"结束");
    }];
    


//    [CoreSVP showSVPWithType:CoreSVPTypeLoadingInterface Msg:@"加载中" duration:1.0f allowEdit:NO beginBlock:nil completeBlock:nil];
////    [CoreSVP dismiss];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//    });
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan");
}

@end
