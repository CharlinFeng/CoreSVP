
CoreSVP （持续关注[信息公告牌](https://github.com/CharlinFeng/Show)）
=======
![image](https://github.com/CharlinFeng/Resource/blob/master/CoreSVP/1.gif)<br/><br/>



一、框架说明
==========
<br/>
>1.封装了SVP提示工具，（由于SVProgressHUD个人觉得做的不够完善，在SVP的基础上大肆更改了源码，现在基本由我维护这个分支版本）。<br />
>2.一句代码显示提示视图。<br />
>3.考虑了多线程的性能问题。<br />
>4.修改了一些svp框架的原码，增加了自定义时间功能。<br />
>5.是否禁用视图交互。<br />
>6.提示框显示完毕回调功能。<br />
>7.中间显示及常见的底部提示功能（仿酷我音乐）。<br />
>8.封装了blur模糊效果。<br />
>9.加载中可取消，需要配合CoreHttp使用，即可全自动中断网络请求。<br />
>10.完美支持swift.

二、基本使用
==========
<br/>

#### 1.普通用法


      /**
      *  展示提示框
      *
      *  @param type          类型
      *  @param msg           文字
      *  @param duration      时间（当type=CoreSVPTypeLoadingInterface时无效）
      *  @param allowEdit     否允许编辑
      *  @param beginBlock    提示开始时的回调
      *  @param completeBlock 提示结束时的回调
      */
      +(void)showSVPWithType:(CoreSVPType)type Msg:(NSString *)msg duration:(CGFloat)duration allowEdit:(BOOL)allowEdit beginBlock:(void(^)())beginBlock completeBlock:(void(^)())completeBlock;


#### 2.提示成功:无回调
    CoreSVPSuccess(@"操作成功", nil)
    
  <br/>
  
#### 3.提示成功:有回调（主线程）
    CoreSVPSuccess(@"操作成功", ^{
    
        NSLog(@"提示完成");
    })
  <br/>

#### 4.提示失败
    CoreSVPError(@"操作失败", nil)
    
  <br/>

#### 5.提示注意
    CoreSVPWarning(@"确定要删除？", nil)
    
  <br/>
  
#### 6.进度提示
    CoreSVPLoading(@"加载中", @"http://4.4.4.4/")
    
  <br/>
  
  注：特别提示，进度是可以取消的，不过这里取消的是界面UI，真正取消的网络请求Task由CoreHttp全自动控制（如果您想全自动取消网络请求，需要使用[CoreHttp](https://github.com/CharlinFeng/CoreHttp)）。
  
