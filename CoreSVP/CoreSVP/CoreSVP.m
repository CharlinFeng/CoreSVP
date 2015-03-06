//
//  CoreSVP.m
//  新浪微博2014MJ版
//
//  Created by muxi on 14/10/22.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import "CoreSVP.h"
#import "SVProgressHUD.h"
#define rgba(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]


@implementation CoreSVP


+(void)showSVPWithType:(CoreSVPType)type Msg:(NSString *)msg duration:(CGFloat)duration allowEdit:(BOOL)allowEdit completeBlock:(void(^)())completeBlock{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //设置背景色
        [SVProgressHUD setBackgroundColor:rgba(0, 0, 0, .68f)];
        
        //文字颜色
        [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
        
        //字体大小
        [SVProgressHUD setFont:[UIFont systemFontOfSize:18.0f]];

        if(CoreSVPTypeBottomMsg == type){
            [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, [UIScreen mainScreen].applicationFrame.size.height * .5f-49.0f)];
        }
        
        //设置时间
        [SVProgressHUD setDuration:duration];
        
        //设置回调
        [SVProgressHUD setCompleteBlock:completeBlock];
        
        //错误图片
        [SVProgressHUD setErrorImage:[UIImage imageNamed:@"CoreSVP.bundle/SVPError"]];
        
        //成功图片
        [SVProgressHUD setSuccessImage:[UIImage imageNamed:@"CoreSVP.bundle/SVPSuccess"]];
        
        SVProgressHUDMaskType maskType=allowEdit?SVProgressHUDMaskTypeNone:SVProgressHUDMaskTypeClear;
        [SVProgressHUD setDefaultMaskType:maskType];
        dispatch_async(dispatch_get_main_queue(), ^{
            switch (type) {
                    
                case CoreSVPTypeCenterMsg:
                case CoreSVPTypeBottomMsg:
                    [SVProgressHUD showImage:nil status:msg];
                    break;
                    
                case CoreSVPTypeInfo:
                    [SVProgressHUD showInfoWithStatus:msg];
                    break;
                    
                case CoreSVPTypeLoadingInterface:
                    [SVProgressHUD showWithStatus:msg];
                    break;
                    
                case CoreSVPTypeError:
                    [SVProgressHUD showErrorWithStatus:msg];
                    break;
                    
                case CoreSVPTypeSuccess:
                    [SVProgressHUD showSuccessWithStatus:msg];
                    break;
                    
                default:
                    break;
            }
        });
    });
}


/**
 *  隐藏提示框
 */
+(void)dismiss{
    [SVProgressHUD dismiss];
}

@end
