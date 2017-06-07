//
//  CoreSVP+Swift.swift
//  CoreSVP
//
//  Created by 冯成林 on 15/9/18.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

import Foundation


/** 成功 */
func CoreSVPSuccess(msg: String,completeClosure:(()->())!){
    
    CoreSVP.show(with: CoreSVPTypeSuccess, msg: msg, duration: 1.6, allowEdit: false, begin: nil) { () -> Void in
        completeClosure?()
    }
}

/** 失败 */
func CoreSVPError(msg: String,completeClosure:(()->())!){
    
    CoreSVP.show(with: CoreSVPTypeError, msg: msg, duration: 2, allowEdit: false, begin: nil) { () -> Void in
        completeClosure?()
    }
}

/** 加载 */
func CoreSVPLoading(msg: String, url: String){
    
    CoreSVP.showLoading(withMsg: msg, url: url)
}

/** 进度 */
func CoreSVPProgress(p: CGFloat) {
    
    CoreSVP.showProgess(p, msg: "上传中", maskType: SVProgressHUDMaskType.clear)
}

/** 底部消息 */
func CoreSVPBottomMsg(msg: String,completeClosure:(()->())!){
    
    CoreSVP.show(with: CoreSVPTypeBottomMsg, msg: msg, duration: 1.6, allowEdit: false, begin: nil) { () -> Void in
        completeClosure?()
    }
}



/**  消失  */
func CoreSVPDismiss(){ CoreSVP.dismiss() }
func CoreSVPDismissDelay(delay: TimeInterval){CoreSVP.dismiss(delay)}
