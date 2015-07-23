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
    
    [CoreSVP showSVPWithType:CoreSVPTypeLoadingInterface Msg:@"加载中" duration:3 allowEdit:NO beginBlock:nil completeBlock:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CoreSVP showSVPWithType:CoreSVPTypeError Msg:@"加载失败" duration:2 allowEdit:NO beginBlock:nil completeBlock:nil];
    });

}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

@end
